.class public Lly4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lny4;


# instance fields
.field public final a:Lrx4;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lly4;->a:Lrx4;

    return-void
.end method


# virtual methods
.method public final a()Lqw4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    return-void
.end method

.method public final e()Lb20;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Lox4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method public final o()Lc35;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method
