.class public final Lcq7$b;
.super Lsq7$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcq7;->d(Ljava/lang/Object;Leq7;Lbq7;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcq7;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsq7;Lsq7;Lcq7;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lcq7$b;->d:Lcq7;

    iput-object p4, p0, Lcq7$b;->e:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Lsq7$a;-><init>(Lsq7;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lsq7;

    .line 2
    iget-object p1, p0, Lcq7$b;->d:Lcq7;

    invoke-virtual {p1}, Lcq7;->e()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcq7$b;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sget-object p1, Lrq7;->a:Ljava/lang/Object;

    :goto_1
    return-object p1
.end method
