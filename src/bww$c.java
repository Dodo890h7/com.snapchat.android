import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import net.hockeyapp.android.views.AttachmentView;

final class bww$c
  extends AsyncTask<Void, Integer, Boolean>
{
  private final bww.b a;
  private final Handler b;
  private File c;
  private Bitmap d;
  private int e;
  
  public bww$c(bww.b paramb, Handler paramHandler)
  {
    a = paramb;
    b = paramHandler;
    c = bwa.a();
    d = null;
    e = 0;
  }
  
  private Boolean a()
  {
    int j = 0;
    bwt localbwt = a.a;
    Object localObject = bwa.a();
    int i = j;
    if (((File)localObject).exists())
    {
      i = j;
      if (((File)localObject).isDirectory())
      {
        localObject = ((File)localObject).listFiles(new bwt.1(localbwt));
        i = j;
        if (localObject != null)
        {
          i = j;
          if (localObject.length == 1) {
            i = 1;
          }
        }
      }
    }
    if (i != 0)
    {
      b();
      return Boolean.valueOf(true);
    }
    boolean bool = a(d, localbwt.a());
    if (bool) {
      b();
    }
    return Boolean.valueOf(bool);
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    long l;
    try
    {
      paramString1 = (HttpURLConnection)new URL(paramString1).openConnection();
      paramString1.addRequestProperty("User-Agent", "HockeySDK/Android");
      paramString1.setInstanceFollowRedirects(true);
      if (Build.VERSION.SDK_INT <= 9) {
        paramString1.setRequestProperty("connection", "close");
      }
      paramString1.connect();
      int i = paramString1.getContentLength();
      Object localObject = paramString1.getHeaderField("Status");
      if ((localObject != null) && (!((String)localObject).startsWith("200"))) {
        return false;
      }
      paramString2 = new File(c, paramString2);
      paramString1 = new BufferedInputStream(paramString1.getInputStream());
      paramString2 = new FileOutputStream(paramString2);
      localObject = new byte['Ѐ'];
      l = 0L;
      for (;;)
      {
        int j = paramString1.read((byte[])localObject);
        if (j == -1) {
          break;
        }
        l += j;
        publishProgress(new Integer[] { Integer.valueOf((int)(100L * l / i)) });
        paramString2.write((byte[])localObject, 0, j);
      }
      paramString2.flush();
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return false;
    }
    paramString2.close();
    paramString1.close();
    return l > 0L;
  }
  
  private void b()
  {
    try
    {
      Object localObject1 = a.a.a();
      Object localObject2 = a.b;
      e = bxi.a(new File(c, (String)localObject1));
      int i;
      if (e == 1)
      {
        i = ((AttachmentView)localObject2).getWidthLandscape();
        if (e != 1) {
          break label146;
        }
      }
      label146:
      for (int j = ((AttachmentView)localObject2).getMaxHeightLandscape();; j = ((AttachmentView)localObject2).getMaxHeightPortrait())
      {
        localObject1 = new File(c, (String)localObject1);
        localObject2 = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeFile(((File)localObject1).getAbsolutePath(), (BitmapFactory.Options)localObject2);
        inSampleSize = bxi.a((BitmapFactory.Options)localObject2, i, j);
        inJustDecodeBounds = false;
        d = BitmapFactory.decodeFile(((File)localObject1).getAbsolutePath(), (BitmapFactory.Options)localObject2);
        return;
        i = ((AttachmentView)localObject2).getWidthPortrait();
        break;
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      d = null;
    }
  }
  
  protected final void onPreExecute() {}
}

/* Location:
 * Qualified Name:     bww.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */