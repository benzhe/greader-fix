.class public final Lk$a;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lcr7;",
        "Lrk7$a;",
        "Lcr7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lk$a;

.field public static final g:Lk$a;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk$a;-><init>(I)V

    sput-object v0, Lk$a;->f:Lk$a;

    new-instance v0, Lk$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk$a;-><init>(I)V

    sput-object v0, Lk$a;->g:Lk$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lk$a;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk$a;->e:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1
    check-cast p1, Lcr7;

    check-cast p2, Lrk7$a;

    .line 2
    instance-of v0, p2, Lhq7;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lhq7;

    .line 4
    iget-object v0, p1, Lcr7;->c:Lrk7;

    .line 5
    invoke-interface {p2, v0}, Lhq7;->q(Lrk7;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    iget-object v0, p1, Lcr7;->a:[Ljava/lang/Object;

    iget v1, p1, Lcr7;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcr7;->b:I

    aput-object p2, v0, v1

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_2
    check-cast p1, Lcr7;

    check-cast p2, Lrk7$a;

    .line 9
    instance-of v0, p2, Lhq7;

    if-eqz v0, :cond_3

    .line 10
    check-cast p2, Lhq7;

    .line 11
    iget-object v0, p1, Lcr7;->c:Lrk7;

    .line 12
    iget-object v1, p1, Lcr7;->a:[Ljava/lang/Object;

    iget v2, p1, Lcr7;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lcr7;->b:I

    aget-object v1, v1, v2

    .line 13
    invoke-interface {p2, v0, v1}, Lhq7;->k(Lrk7;Ljava/lang/Object;)V

    :cond_3
    return-object p1
.end method
