.class public final Lr82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lp82;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lll2;


# direct methods
.method public constructor <init>(Lll2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr82;->a:Lll2;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lp82;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp82;

    iget-object v1, p0, Lr82;->a:Lll2;

    invoke-direct {v0, v1}, Lp82;-><init>(Lll2;)V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
