.class public final synthetic Lbh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lzg2;


# direct methods
.method public constructor <init>(Lzg2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbh2;->e:Lzg2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbh2;->e:Lzg2;

    .line 1
    iget-object v1, v0, Lzg2;->e:Lsy0;

    invoke-virtual {v1}, Lsy0;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lch2;

    invoke-direct {v2, v0}, Lch2;-><init>(Lzg2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
