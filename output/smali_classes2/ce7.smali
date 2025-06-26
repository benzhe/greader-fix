.class public final Lce7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce7$a;
    }
.end annotation


# instance fields
.field public final a:Llb7;

.field public final b:Lzb7;


# direct methods
.method public constructor <init>(Llb7;Lzb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lce7;->a:Llb7;

    .line 3
    iput-object p2, p0, Lce7;->b:Lzb7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lce7;->a:Llb7;

    new-instance v1, Lce7$a;

    iget-object v2, p0, Lce7;->b:Lzb7;

    invoke-direct {v1, p1, v2}, Lce7$a;-><init>(Ljb7;Lzb7;)V

    invoke-interface {v0, v1}, Llb7;->a(Ljb7;)V

    return-void
.end method
