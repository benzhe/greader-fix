.class public final Lnn2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lf61;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcn2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn2<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final b:Lon2;


# direct methods
.method public constructor <init>(Lcn2;Lon2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn2<",
            "TAdT;>;",
            "Lon2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnn2;->a:Lcn2;

    .line 3
    iput-object p2, p0, Lnn2;->b:Lon2;

    return-void
.end method
