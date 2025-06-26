.class public final synthetic Lz32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public final a:Lmz1;


# direct methods
.method public constructor <init>(Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz32;->a:Lmz1;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lz32;->a:Lmz1;

    .line 2
    :try_start_0
    iget-object v0, p2, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    invoke-virtual {v0, p1}, Lzl2;->b(Z)V

    .line 3
    iget-object p1, p2, Lmz1;->b:Ljava/lang/Object;

    check-cast p1, Lzl2;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object p1, p1, Lzl2;->a:Lig0;

    invoke-interface {p1}, Lig0;->showVideo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Cannot show rewarded video."

    .line 7
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance p2, Lvh1;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lvh1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
