.class public Lcom/noinnion/android/greader/ui/media/MusicActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/media/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/media/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/media/MusicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$a;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$a;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    .line 2
    sget v0, Lur6$a;->e:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.noinnion.android.greader.ui.media.IMusicService"

    .line 3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lur6;

    if-eqz v1, :cond_1

    .line 5
    move-object p2, v0

    check-cast p2, Lur6;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lur6$a$a;

    invoke-direct {v0, p2}, Lur6$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 7
    :goto_0
    iput-object p2, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicActivity$a;->a:Lcom/noinnion/android/greader/ui/media/MusicActivity;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;->F:Lur6;

    return-void
.end method
