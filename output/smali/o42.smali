.class public final synthetic Lo42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio2;


# instance fields
.field public final a:Lm42;

.field public final b:Lq50;


# direct methods
.method public constructor <init>(Lm42;Lq50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo42;->a:Lm42;

    iput-object p2, p0, Lo42;->b:Lq50;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo42;->a:Lm42;

    iget-object v1, p0, Lo42;->b:Lq50;

    .line 1
    iget-object v0, v0, Lm42;->c:Lt50;

    invoke-interface {v0, v1}, Lt50;->p6(Ls50;)V

    return-void
.end method
