.class public final Ljw0;
.super Lzv0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Liu0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzv0;-><init>(Liu0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lzv0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liu0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lzr0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1, p0}, Liu0;->h(Ljava/lang/String;Lzv0;)V

    :cond_0
    const-string v0, "VideoStreamNoopCache is doing nothing."

    .line 4
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lzr0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lzv0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
