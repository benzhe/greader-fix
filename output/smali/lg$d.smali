.class public Llg$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ln4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln4<",
            "Ln4<",
            "Lpg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln4;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Ln4;-><init>(I)V

    .line 4
    iput-object v0, p0, Llg$d;->a:Ln4;

    return-void
.end method
