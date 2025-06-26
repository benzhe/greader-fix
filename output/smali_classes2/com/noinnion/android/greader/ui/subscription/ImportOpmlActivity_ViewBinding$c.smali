.class public Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$c;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding;Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$c;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity_ViewBinding$c;->e:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    const-string v2, ".opml"

    .line 4
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v2

    new-instance v3, Lku6;

    invoke-direct {v3, p1}, Lku6;-><init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;)V

    .line 6
    sget p1, Lfy6;->l:I

    .line 7
    :try_start_0
    new-instance p1, Lfy6;

    const/4 v4, 0x1

    invoke-direct {p1, v0, v4, v1, v3}, Lfy6;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Lfy6$e;)V

    .line 8
    check-cast v2, Lxb;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lqb;

    invoke-direct {v0, v2}, Lqb;-><init>(Lxb;)V

    const-string v1, "fragment_file_picker"

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2, p1, v1, v4}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 12
    invoke-virtual {v0}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
