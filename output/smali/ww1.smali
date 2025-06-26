.class public final synthetic Lww1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# direct methods
.method public constructor <init>(Lmw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 4

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 4
    aget-object v0, v0, v2

    .line 5
    sget-object v2, Lms0;->a:Lzv2;

    new-instance v3, Lam2;

    invoke-direct {v3, p1, v0}, Lam2;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
