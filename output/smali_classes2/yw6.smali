.class public final Lyw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lyw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 2
    sget v0, Lcom/noinnion/android/reader/R$id;->menu_pip:I

    if-ne p1, v0, :cond_1

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lyw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.picture_in_picture"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lyw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lt75;

    iget-object v0, p0, Lyw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-direct {p1, v0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v0, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v1, "Can\'t enter picture in picture mode"

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const-string v1, "In order to enter picture in picture mode you need a SDK version >= N."

    .line 8
    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1}, La0$a;->e()La0;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
