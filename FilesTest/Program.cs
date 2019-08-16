using FilesTest.FTDataSetTableAdapters;
using SQLLibB1;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Utilities.RegularExpressions;

namespace FilesTest
{
    class Program
    {
        static Encoding enc8 = Encoding.Unicode;
        static void Main(string[] args)
        {
            FTDataSet ds = new FTDataSet();
            FileGroupTableAdapter fileGroups = new FileGroupTableAdapter();
            fileGroups.Fill(ds.FileGroup);
            //mainFileContainer_normalizationName();
            //HashMD5();
            /*CommonTableAdapter cta = new CommonTableAdapter();
            cta.Delete_ActFiles_system_Query();
            Console.WriteLine("Очищена ActFiles");
            cta.Delete_Files4_system_Query();
            Console.WriteLine("Очищена Files4");
            cta.Delete_Files_system_Query();
            Console.WriteLine("Очищена Files");
            cta.Delete_mainFileContainer_system_Query();
            Console.WriteLine("Очищена _mainFileContainer");
            cta.Insert_Files_Hashes_Query();
            cta.Insert_Files4_Hashes_Query();
            cta.Insert_mainFileContainer_Hashes_Query();
            cta.Insert_ActFiles_Hashes_Query();
            cta.Insert_mainFileContainer_Hashes_Query();*/
            ActFiles_normalizationName();
            /*//insertHashToFiles();
            mainFileContainer_insertFoto();
            foreach (DataRow _fileGroup in ds.FileGroup)
            {
                //insertHashToFiles4(_fileGroup["FileGroup"].ToString());
                //correctDateToFiles(_fileGroup["FileGroup"].ToString());    
                //insertHashTomainFileContainer(_fileGroup["FileGroup"].ToString());
            }*/
        }

        public static void insertHashToFiles4(string fileNamePart)
        {
            FTDataSet ds = new FTDataSet();
            CommonTableAdapter upA = new CommonTableAdapter();
            Files4forUpdateNameTableAdapter f4 = new Files4forUpdateNameTableAdapter();
            CommonTableAdapter cta = new CommonTableAdapter();
            f4.Fill(ds.Files4forUpdateName, fileNamePart);
            try
            {
                foreach (DataRow dr in ds.Files4forUpdateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    if (match != null)
                    {
                        string _result = null;
                        _result = match.UNOM + match.Name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension;
                        if (dr["Name"].ToString() != _result)
                        {
                            dr.SetField<string>("Name", _result);

                        };
                    };
                }
            }
            finally
            {
                if (ds.Files4forUpdateName.HasErrors)
                {
                }
                else
                    // If no errors, AcceptChanges.
                    if (ds.Files4forUpdateName.GetChanges() != null)
                {
                    //ds.Files4forUpdateName.AcceptChanges();
                    f4.Update(ds.Files4forUpdateName);
                }

            }
        }

        public static void Files4updateName_insertFoto(string fileNamePart)
        {
            MATCFileNameFull q = new MATCFileNameFull();
            FTDataSet ds = new FTDataSet();
            Files4forUpdateNameTableAdapter f4 = new Files4forUpdateNameTableAdapter();
            string _name = "_фото";
            f4.Fill(ds.Files4forUpdateName, null);
            try
            {
                foreach (DataRow dr in ds.Files4forUpdateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    if (match != null && string.IsNullOrEmpty(match.Name))
                    {
                        string _result = null;
                        _result = match.UNOM + _name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension;
                        if (dr["Name"].ToString() != _result)
                        {
                            dr.SetField<string>("Name", _result);
                        };
                    };
                }
            }
            finally
            {
                if (ds.Files4forUpdateName.HasErrors)
                {
                }
                else
                    // If no errors, AcceptChanges.
                    if (ds.Files4forUpdateName.GetChanges() != null)
                {
                    //ds.Files4forUpdateName.AcceptChanges();
                    f4.Update(ds.Files4forUpdateName);
                }

            }
        }

        public static void mainFileContainer_insertFoto()
        {
            MATCFileNameFull q = new MATCFileNameFull();
            FTDataSet ds = new FTDataSet();
            mainFileContainer_for_updateNameTableAdapter f4 = new mainFileContainer_for_updateNameTableAdapter();
            string _name = "_фото";
            f4.Fill(ds.mainFileContainer_for_updateName);
            try
            {
                var rr = ds.mainFileContainer_for_updateName.Where(selector =>
                  {
                      MATCFileNameFullExtensoinResult match1 = RegEx.GetMATCFileNameFullExtensoinResult(selector["name"].ToString()).FirstOrDefault();
                      if (match1 != null && string.IsNullOrEmpty(match1.Name)) { return true; } else { return false; };
                  });
                foreach (DataRow dr in ds.mainFileContainer_for_updateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    if (match != null && string.IsNullOrEmpty(match.Name))
                    {
                        string _result = null;
                        _result = match.UNOM + _name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension;
                        if (dr["Name"].ToString() != _result)
                        {
                            dr.SetField<string>("Name", _result);
                        };
                    };
                }
            }
            finally
            {
                if (ds.mainFileContainer_for_updateName.HasErrors)
                {
                }
                else
                    // If no errors, AcceptChanges.
                    if (ds.mainFileContainer_for_updateName.GetChanges() != null)
                {
                    //ds.Files4forUpdateName.AcceptChanges();
                    f4.Update(ds.mainFileContainer_for_updateName);
                }

            }
        }


        public static void ActFiles_normalizationName()
        {
            MATCFileNameFull q = new MATCFileNameFull();
            FTDataSet ds = new FTDataSet();
            CommonTableAdapter cta = new CommonTableAdapter();
            ActFilesforUpdateNameTableAdapter f4 = new ActFilesforUpdateNameTableAdapter();
            f4.Fill(ds.ActFilesforUpdateName);
            try
            {
                /*var rr = ds.ActFilesforUpdateName.Where(selector =>
                {
                    MATCFileNameFullExtensoinResult match1 = RegEx.GetMATCFileNameFullExtensoinResult(selector["name"].ToString()).FirstOrDefault();
                    if (match1 != null && string.IsNullOrEmpty(match1.Name)) { return true; } else { return false; };
                }).ToList();*/
                foreach (DataRow dr in ds.ActFilesforUpdateName.Rows)
                {
                    string _result = null;
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString().Trim()).FirstOrDefault();
                    if (match != null)
                    {
                        Console.WriteLine(dr["name"].ToString() + " добавляется");
                        if (string.IsNullOrEmpty(match.Name))
                        { _result = match.UNOM + "_фото_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension; }
                        else
                        { _result = match.UNOM + match.Name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension; }
                        if (dr["Name"].ToString() != _result)
                        {
                            //dr.SetField<string>("Name", _result);
                            try
                            {
                                cta.Update_ActFiles_names_Query(_result, dr["path_locator"].ToString());
                                Console.WriteLine(_result);
                            }
                            catch (Exception e)
                            { Console.WriteLine(_result + e.Message); }
                        };
                    }
                    else
                    {
                        _result = dr["UNOM"].ToString() + "_фото_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + dr["file_type"].ToString();
                        Console.WriteLine(dr["name"].ToString() + " добавляется");
                        cta.Update_ActFiles_names_Query(_result, dr["path_locator"].ToString());
                    };
                }
            }
            finally
            {
                if (ds.ActFilesforUpdateName.HasErrors)
                {
                }
                else
                    // If no errors, AcceptChanges.
                    if (ds.ActFilesforUpdateName.GetChanges() != null)
                {
                    //ds.Files4forUpdateName.AcceptChanges();
                    f4.Update(ds.ActFilesforUpdateName);
                }

            }
        }


        public static void mainFileContainer_normalizationName()
        {
            MATCFileNameFull q = new MATCFileNameFull();
            FTDataSet ds = new FTDataSet();
            CommonTableAdapter cta = new CommonTableAdapter();
            mainFileContainer_for_updateNameTableAdapter f4 = new mainFileContainer_for_updateNameTableAdapter();
            f4.Connection.ConnectionString = "Data Source=MAKSIMOV;Initial Catalog=GBUMATC;Persist Security Info=True;Connection Timeout=50000000;User ID=Бушмакин;Password=453459";
            FTDataSet.mainFileContainer_for_updateNameDataTable wtable = ds.mainFileContainer_for_updateName;
            f4.Fill(wtable);
            try
            {
                /*var rr = wtable.Where(selector =>
                {
                    MATCFileNameFullExtensoinResult match1 = RegEx.GetMATCFileNameFullExtensoinResult(selector["name"].ToString()).FirstOrDefault();
                    if (match1 != null && string.IsNullOrEmpty(match1.Name)) { return true; } else { return false; };
                }).ToList();*/
                foreach (DataRow dr in wtable.Rows)
                {
                    string _result = null;
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString().Trim()).FirstOrDefault();
                    if (match != null)
                    {
                        Console.WriteLine(dr["name"].ToString() + " добавляется");
                        if (string.IsNullOrEmpty(match.Name))
                        { _result = match.UNOM + "_фото_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension; }
                        else
                        { _result = match.UNOM + match.Name + "_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + match.Extension; }
                        if (dr["Name"].ToString() != _result)
                        {
                            dr.SetField<string>("Name", _result);
                            try
                            {
                                //cta.Update_mainFileContainer_Query(_result, dr["path_locator"].ToString());
                                Console.WriteLine(_result);
                            }
                            catch (Exception e)
                            { Console.WriteLine(_result + e.Message); }
                        };
                    }
                    else
                    {
                        //_result = dr["UNOM"].ToString() + "_фото_" + dr["fdate"].ToString() + "_" + dr["Hash"].ToString() + "." + dr["file_type"].ToString();
                        Console.WriteLine(dr["name"].ToString() + " херня-с");
                        //cta.Update_ActFiles_names_Query(_result, dr["path_locator"].ToString());
                        //dr.SetField<string>("Name", _result);
                    };
                }
            }
            finally
            {
                if (wtable.HasErrors)
                {
                }
                else
                    // If no errors, AcceptChanges.
                    if (wtable.GetChanges() != null)
                {
                    //ds.Files4forUpdateName.AcceptChanges();
                    f4.Update(wtable);
                }

            }
        }

        public static void correctDateToFiles(string fileNamePart)
        {
            CommonTableAdapter upA = new CommonTableAdapter();
            FTDataSet ds = new FTDataSet();
            FilesforUpdateNameTableAdapter files = new FilesforUpdateNameTableAdapter();
            files.Fill(ds.FilesforUpdateName);
            MATCFileNameFull q = new MATCFileNameFull();
            try
            {
                foreach (DataRow dr in ds.FilesforUpdateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    string _result = null;
                    if (match != null)
                    {
                        _result = match.UNOM + match.Name + "_" + dr["fdate"].ToString() + match.Counter + "." + match.Extension;
                        if (dr["name"].ToString() != _result)
                        { dr["name"] = _result; }
                    }
                };
            }
            finally
            {
                if (ds.FilesforUpdateName.HasErrors)
                { }
                else // If no errors, AcceptChanges.

                        if (ds.FilesforUpdateName.GetChanges() != null)
                {
                    files.Update(ds.FilesforUpdateName);
                }
            }
        }

        public static void insertHashTomainFileContainer(string fileNamePart)
        {

            FTDataSet ds = new FTDataSet();
            mainFileContainer_for_updateNameTableAdapter files = new mainFileContainer_for_updateNameTableAdapter();
            files.Fill(ds.mainFileContainer_for_updateName);
            try
            {
                foreach (DataRow dr in ds.mainFileContainer_for_updateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    string _result = null;
                    if (match != null)
                    {
                        _result = match.UNOM + match.Name + match.Date + "_" + dr["Hash"].ToString() + "." + match.Extension;
                        if (dr["name"].ToString() != _result)
                        { dr["name"] = _result; }
                    }
                };
            }
            finally
            {
                if (ds.mainFileContainer_for_updateName.HasErrors)
                { }
                else // If no errors, AcceptChanges.

                        if (ds.mainFileContainer_for_updateName.GetChanges() != null)
                {
                    files.Update(ds.mainFileContainer_for_updateName);
                }
            }
        }

        public static void insertHashToFiles()
        {
            FTDataSet ds = new FTDataSet();
            FilesforUpdateNameTableAdapter files = new FilesforUpdateNameTableAdapter();
            files.Fill(ds.FilesforUpdateName);
            try
            {
                foreach (DataRow dr in ds.FilesforUpdateName.Rows)
                {
                    MATCFileNameFullExtensoinResult match = RegEx.GetMATCFileNameFullExtensoinResult(dr["name"].ToString()).FirstOrDefault();
                    string _result = null;
                    if (match != null)
                    {
                        _result = match.UNOM + match.Name + match.Date + "_" + dr["Hash"].ToString() + "." + match.Extension;
                        if (dr["name"].ToString() != _result)
                        { dr["name"] = _result; }
                    }
                };
            }
            finally
            {
                if (ds.FilesforUpdateName.HasErrors)
                { }
                else // If no errors, AcceptChanges.

                        if (ds.FilesforUpdateName.GetChanges() != null)
                {
                    files.Update(ds.FilesforUpdateName);
                }
            }
        }
        public static void HashMD5()
        {
            DirectoryInfo di;
            List<DirectoryInfo> dList = new List<DirectoryInfo>();
            List<FileInfo> h;
            DirectoryInfo _directory = new DirectoryInfo("Z:\\");
            DirectoryInfo[] directories = _directory.GetDirectories();
            foreach (DirectoryInfo dir in directories)
            {
                try
                {
                    MD5Calculate(dir.GetFiles("*", SearchOption.AllDirectories).ToList());
                    if (dir.GetFiles().Count() == 0 & dir.GetDirectories().Count() == 0)

                    { dir.Delete(); }
                }
                catch (Exception) { }
            }
        }

        public static void MD5Calculate(List<FileInfo> files, int LevelParalellism = 3)
        {
            int n = 1;
            ParallelOptions po = new ParallelOptions();
            List<string> filenames = new List<string>();
            po.MaxDegreeOfParallelism = LevelParalellism;
            FTDataSet ds = new FTDataSet();
            CommonTableAdapter ca = new CommonTableAdapter();
            ///foreach (FileInfo _f in files) { filenames.Add(_f.FullName); }
            //Parallel.ForEach<string>(filenames, po, f =>
            foreach (FileInfo file in files)
            {
                //FileInfo file = new FileInfo(f);
                if ((file.Attributes & FileAttributes.System) == FileAttributes.System
                    || (file.Attributes & FileAttributes.Hidden) == FileAttributes.Hidden
                    || (file.Attributes & FileAttributes.Temporary) == FileAttributes.Temporary
                   )
                {
                    try { file.Delete(); }
                    catch (Exception e)
                    { }
                }
                else
                {
                    MD5 md5 = MD5.Create();
                    try
                    {
                        FileStream sr = file.OpenRead();
                        byte[] srresult = new byte[sr.Length];
                        sr.Read(srresult, 0, (int)sr.Length);
                        sr.Close();
                        byte[] hash = md5.ComputeHash(srresult);
                        string Hash = BitConverter.ToString(hash).Replace("-", "");

                        if (ca.mainFileContainer_ContentsHash(Hash).Value)
                        {
                            Console.WriteLine(file.FullName);
                            file.Delete();
                        }
                    }
                    catch (Exception e)
                    {
                    }
                    n++;
                }
            };
        }



    }
}






