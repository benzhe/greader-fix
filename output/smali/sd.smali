.class public abstract Lsd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsd$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ldd;)Lsd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ldd;",
            ":",
            "Lrd;",
            ">(TT;)",
            "Lsd;"
        }
    .end annotation

    .line 1
    new-instance v0, Ltd;

    move-object v1, p0

    check-cast v1, Lrd;

    invoke-interface {v1}, Lrd;->getViewModelStore()Lqd;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltd;-><init>(Ldd;Lqd;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(ILandroid/os/Bundle;Lsd$a;)Lwd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lsd$a<",
            "TD;>;)",
            "Lwd<",
            "TD;>;"
        }
    .end annotation
.end method
