.class public Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$e;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding;Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$e;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$e;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lop6;->X1()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C(Z)V

    .line 4
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lop6;->J()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
