.class public final synthetic Lsf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs0;


# instance fields
.field public final a:Lxs0;


# direct methods
.method public constructor <init>(Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsf0;->a:Lxs0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsf0;->a:Lxs0;

    .line 2
    new-instance v1, Laf0;

    const-string v2, "Cannot get Javascript Engine"

    invoke-direct {v1, v2}, Laf0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
