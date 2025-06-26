package defpackage;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.noinnion.android.R$drawable;
import com.noinnion.android.R$id;
import com.noinnion.android.R$layout;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class fy6 extends rb implements View.OnClickListener, AdapterView.OnItemClickListener {
    public static final /* synthetic */ int l = 0;
    public ListView e;
    public File f;
    public ArrayList<File> g;
    public d h;
    public boolean i;
    public String[] j;
    public e k;

    public class b implements FilenameFilter {
        public String[] e;

        public b(fy6 fy6Var, String[] strArr) {
            this.e = strArr;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            String[] strArr;
            if (new File(file, str).isDirectory() || (strArr = this.e) == null || strArr.length <= 0) {
                return true;
            }
            for (String str2 : strArr) {
                if (str.endsWith(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public class c implements Comparator<File> {
        public c(fy6 fy6Var, a aVar) {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            File file3 = file;
            File file4 = file2;
            if (file3 == file4) {
                return 0;
            }
            if (file3.isDirectory() && file4.isFile()) {
                return -1;
            }
            if (file3.isFile() && file4.isDirectory()) {
                return 1;
            }
            return file3.getName().compareToIgnoreCase(file4.getName());
        }
    }

    public class d extends ArrayAdapter<File> {
        public List<File> e;

        public d(Context context, List<File> list) {
            super(context, R$layout.file_picker_list_item, R.id.text1, list);
            this.e = list;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R$layout.file_picker_list_item, viewGroup, false);
            }
            File file = this.e.get(i);
            ImageView imageView = (ImageView) view.findViewById(R$id.file_picker_image);
            TextView textView = (TextView) view.findViewById(R$id.file_picker_text);
            textView.setSingleLine(true);
            if (file == null) {
                String name = fy6.this.f.getParentFile().getName();
                StringBuilder sbZ = jo.z("[");
                if (TextUtils.isEmpty(name)) {
                    name = "Up";
                }
                sbZ.append(name);
                sbZ.append("]");
                textView.setText(sbZ.toString());
                imageView.setImageResource(R$drawable.file_picker_folder_up);
            } else {
                textView.setText(file.getName());
                if (file.isFile()) {
                    imageView.setImageResource(R$drawable.file_picker_file_unknown);
                } else {
                    imageView.setImageResource(R$drawable.file_picker_folder);
                }
            }
            return view;
        }
    }

    public interface e {
    }

    public fy6(String str, boolean z, String[] strArr, e eVar) {
        this.i = false;
        this.k = null;
        if (str != null) {
            this.f = new File(str);
        } else {
            this.f = new File("/");
        }
        this.i = z;
        if (strArr != null) {
            this.j = strArr;
        } else {
            this.j = new String[0];
        }
        this.k = eVar;
    }

    public void d() {
        String name = this.f.getName();
        Dialog dialog = getDialog();
        if (TextUtils.isEmpty(name)) {
            name = "...";
        }
        dialog.setTitle(name);
        this.g.clear();
        File[] fileArrListFiles = this.f.listFiles(new b(this, this.j));
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                if (!file.isHidden() || this.i) {
                    this.g.add(file);
                }
            }
            Collections.sort(this.g, new c(this, null));
        }
        if (this.f.getParent() != null) {
            this.g.add(0, null);
        }
        this.h.notifyDataSetChanged();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        getDialog().setTitle("/");
        this.g = new ArrayList<>();
        d dVar = new d(getActivity(), this.g);
        this.h = dVar;
        this.e.setAdapter((ListAdapter) dVar);
        this.e.setOnItemClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 16908327) {
            return;
        }
        dismiss();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R$layout.file_picker, viewGroup);
        this.e = (ListView) viewInflate.findViewById(R.id.list);
        viewInflate.findViewById(R.id.closeButton).setOnClickListener(this);
        return viewInflate;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        File file = (File) adapterView.getItemAtPosition(i);
        if (file == null) {
            if (this.f.getParentFile() != null) {
                this.f = this.f.getParentFile();
                d();
                return;
            }
            return;
        }
        if (!file.isFile()) {
            this.f = file;
            d();
            return;
        }
        MimeTypeMap.getSingleton().getMimeTypeFromExtension(file.getName().split("\\.")[r3.length - 1]);
        e eVar = this.k;
        if (eVar != null) {
            ((ku6) eVar).a.vInputText.setText(file.getAbsolutePath());
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        d();
        super.onResume();
    }
}
