## Requirements
. Linux

. NVIDIA GPU

## How to install privateGPT

```
cd /path/to/file

sh installer.sh
```

## How to use privateGPT

### 1. Ingest documents
. Put any and all your files into the `source_documents` directory.
The supported extensions are:

   - `.csv`: CSV,
   - `.docx`: Word Document,
   - `.doc`: Word Document,
   - `.enex`: EverNote,
   - `.eml`: Email,
   - `.epub`: EPub,
   - `.html`: HTML File,
   - `.md`: Markdown,
   - `.msg`: Outlook Message,
   - `.odt`: Open Document Text,
   - `.pdf`: Portable Document Format (PDF),
   - `.pptx` : PowerPoint Document,
   - `.ppt` : PowerPoint Document,
   - `.txt`: Text file (UTF-8),

Run the following command below to ingest data the data.
```
sudo python3 /home/$USER/privateGPT/ingest.py
```
### 2. Run privateGPT
```
sudo python3 /home/$USER/privateGPT/privateGPT.py
```
## Documentation
https://github.com/imartinez/privateGPT
