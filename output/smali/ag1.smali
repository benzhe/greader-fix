.class public final Lag1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxf1;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljq2;

.field public c:Z


# direct methods
.method public constructor <init>(Lsk2;Ljq2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lsk2;->o:Ljava/util/List;

    iput-object p1, p0, Lag1;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lag1;->b:Ljq2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lag1;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lag1;->b:Ljq2;

    iget-object v1, p0, Lag1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljq2;->b(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lag1;->c:Z

    :cond_0
    return-void
.end method
