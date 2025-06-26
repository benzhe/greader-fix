.class public final synthetic Lzp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lxs0;


# direct methods
.method public constructor <init>(Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp1;->a:Lxs0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzp1;->a:Lxs0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Ad Web View failed to load."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
