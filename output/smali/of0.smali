.class public final Lof0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs0;


# instance fields
.field public final synthetic a:Lxs0;

.field public final synthetic b:Loe0;


# direct methods
.method public constructor <init>(Lxs0;Loe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lof0;->a:Lxs0;

    iput-object p2, p0, Lof0;->b:Loe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lof0;->a:Lxs0;

    new-instance v1, Laf0;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Laf0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 2
    iget-object v0, p0, Lof0;->b:Loe0;

    invoke-virtual {v0}, Loe0;->d()V

    return-void
.end method
