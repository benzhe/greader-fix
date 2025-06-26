.class public Lfy6;
.super Lrb;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfy6$b;,
        Lfy6$c;,
        Lfy6$d;,
        Lfy6$e;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public e:Landroid/widget/ListView;

.field public f:Ljava/io/File;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lfy6$d;

.field public i:Z

.field public j:[Ljava/lang/String;

.field public k:Lfy6$e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;Lfy6$e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lrb;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfy6;->i:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lfy6;->k:Lfy6$e;

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfy6;->f:Ljava/io/File;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lfy6;->f:Ljava/io/File;

    .line 6
    :goto_0
    iput-boolean p2, p0, Lfy6;->i:Z

    if-eqz p3, :cond_1

    .line 7
    iput-object p3, p0, Lfy6;->j:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array p1, v0, [Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lfy6;->j:[Ljava/lang/String;

    .line 9
    :goto_1
    iput-object p4, p0, Lfy6;->k:Lfy6$e;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfy6;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "..."

    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lfy6;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    new-instance v0, Lfy6$b;

    iget-object v1, p0, Lfy6;->j:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lfy6$b;-><init>(Lfy6;[Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lfy6;->f:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6
    array-length v3, v0

    if-lez v3, :cond_3

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lfy6;->i:Z

    if-nez v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lfy6;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lfy6;->g:Ljava/util/ArrayList;

    new-instance v3, Lfy6$c;

    invoke-direct {v3, p0, v1}, Lfy6$c;-><init>(Lfy6;Lfy6$a;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lfy6;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfy6;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lfy6;->h:Lfy6$d;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfy6;->g:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lfy6$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lfy6;->g:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, v1}, Lfy6$d;-><init>(Lfy6;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lfy6;->h:Lfy6$d;

    .line 5
    iget-object v0, p0, Lfy6;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Lfy6;->e:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x1020027

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lrb;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p3, Lcom/noinnion/android/R$layout;->file_picker:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lfy6;->e:Landroid/widget/ListView;

    const p2, 0x1020027

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lfy6;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lfy6;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lfy6;->f:Ljava/io/File;

    .line 4
    invoke-virtual {p0}, Lfy6;->d()V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "\\."

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 8
    array-length p4, p3

    add-int/lit8 p4, p4, -0x1

    aget-object p3, p3, p4

    .line 9
    invoke-virtual {p2, p3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lfy6;->k:Lfy6$e;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lku6;

    .line 11
    iget-object p2, p2, Lku6;->a:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    iget-object p2, p2, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vInputText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lrb;->dismiss()V

    goto :goto_0

    .line 13
    :cond_3
    iput-object p1, p0, Lfy6;->f:Ljava/io/File;

    .line 14
    invoke-virtual {p0}, Lfy6;->d()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfy6;->d()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method
