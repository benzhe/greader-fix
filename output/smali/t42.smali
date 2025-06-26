.class public final synthetic Lt42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio2;


# instance fields
.field public final a:Lu42;

.field public final b:Lq50;


# direct methods
.method public constructor <init>(Lu42;Lq50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt42;->a:Lu42;

    iput-object p2, p0, Lt42;->b:Lq50;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt42;->a:Lu42;

    iget-object v1, p0, Lt42;->b:Lq50;

    .line 1
    iget-object v0, v0, Lu42;->a:Lt50;

    invoke-interface {v0, v1}, Lt50;->p6(Ls50;)V

    return-void
.end method
