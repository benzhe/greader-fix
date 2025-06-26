.class public final synthetic Lwy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Lsy1;

.field public final b:Lls0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsy1;Lls0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwy1;->a:Lsy1;

    iput-object p2, p0, Lwy1;->b:Lls0;

    iput-object p3, p0, Lwy1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lwy1;->a:Lsy1;

    iget-object v1, p0, Lwy1;->b:Lls0;

    iget-object v2, p0, Lwy1;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    iget-object v0, v0, Lsy1;->f:Lzv2;

    new-instance v3, Lty1;

    invoke-direct {v3, p1, v2, v1}, Lty1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lls0;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
