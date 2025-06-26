.class public final Lj17;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj17$b;
    }
.end annotation


# instance fields
.field public final a:Lh17;

.field public final b:Lg17;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj17$b;Lj17$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lj17$b;->a:Lh17;

    .line 3
    iput-object p2, p0, Lj17;->a:Lh17;

    .line 4
    iget-object p1, p1, Lj17$b;->b:Lg17$b;

    .line 5
    new-instance p2, Lg17;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lg17;-><init>(Lg17$b;Lg17$a;)V

    .line 6
    iput-object p2, p0, Lj17;->b:Lg17;

    .line 7
    iput-object p0, p0, Lj17;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Request{method="

    const-string v1, "GET"

    const-string v2, ", url="

    .line 1
    invoke-static {v0, v1, v2}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj17;->a:Lh17;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj17;->c:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
