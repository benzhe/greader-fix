.class public Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$g;
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
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$g;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity_ViewBinding$g;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lop6;->i3()Ljava/util/List;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lop6;->c3()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    move-wide v3, v2

    move-object v2, p1

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljv6;

    .line 8
    new-instance v5, Liv6;

    invoke-direct {v5, v1}, Liv6;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    move-object v0, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Ljv6;-><init>(Landroid/content/Context;Ljava/util/List;JLjv6$e;)V

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
