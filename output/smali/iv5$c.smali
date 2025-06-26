.class public Liv5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkw5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkw5<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Liv5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liv5<",
            "TReqT;TRespT;TCallbackT;>.a;"
        }
    .end annotation
.end field

.field public final synthetic b:Liv5;


# direct methods
.method public constructor <init>(Liv5;Liv5$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liv5<",
            "TReqT;TRespT;TCallbackT;>.a;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Liv5$c;->b:Liv5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Liv5$c;->a:Liv5$a;

    return-void
.end method
