.class public final Lmc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lnc2;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmc2;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lmc2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lnc2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lnc2;

    iget-object v1, p0, Lmc2;->a:Ljava/lang/String;

    iget-object v2, p0, Lmc2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lnc2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
