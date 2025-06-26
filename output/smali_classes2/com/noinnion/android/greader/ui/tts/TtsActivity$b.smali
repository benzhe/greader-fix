.class public final Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/tts/TtsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "className"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    sget v0, Lop6$a;->e:I

    const-string v0, "com.noinnion.android.greader.service.ITtsService"

    .line 3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Lop6;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lop6;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lop6$a$a;

    invoke-direct {v0, p2}, Lop6$a$a;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 9
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lop6;->Z3()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "className"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    return-void
.end method
