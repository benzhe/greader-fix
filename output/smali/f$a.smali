.class public final Lf$a;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Li18;",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lf$a;

.field public static final g:Lf$a;

.field public static final h:Lf$a;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf$a;-><init>(I)V

    sput-object v0, Lf$a;->f:Lf$a;

    new-instance v0, Lf$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf$a;-><init>(I)V

    sput-object v0, Lf$a;->g:Lf$a;

    new-instance v0, Lf$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lf$a;-><init>(I)V

    sput-object v0, Lf$a;->h:Lf$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf$a;->e:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v10, Lq08;->e:Lq08;

    iget v0, p0, Lf$a;->e:I

    const/4 v11, 0x0

    const-string v1, "$receiver"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Li18;

    .line 2
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v4, Lno6;->e:Lno6;

    .line 4
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 5
    iget-object v1, p1, Li18;->a:Lk18;

    .line 6
    sget-object v12, Lhk7;->e:Lhk7;

    .line 7
    new-instance v13, Lp08;

    .line 8
    const-class v0, Lwo6;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v3, 0x0

    move-object v0, v13

    move-object v5, v10

    move-object v6, v12

    .line 9
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 10
    iget-object v0, p1, Li18;->d:Ljava/util/HashSet;

    .line 11
    invoke-static {v0, v13}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 12
    sget-object v4, Loo6;->e:Loo6;

    .line 13
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 14
    iget-object v1, p1, Li18;->a:Lk18;

    .line 15
    new-instance v11, Lp08;

    .line 16
    const-class v0, Luo6;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    move-object v0, v11

    .line 17
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 18
    iget-object p1, p1, Li18;->d:Ljava/util/HashSet;

    .line 19
    invoke-static {p1, v11}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 20
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    check-cast p1, Li18;

    .line 23
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v4, Llo6;->e:Llo6;

    .line 25
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 26
    iget-object v1, p1, Li18;->a:Lk18;

    .line 27
    sget-object v12, Lhk7;->e:Lhk7;

    .line 28
    new-instance v13, Lp08;

    .line 29
    const-class v0, Lgo6;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v3, 0x0

    move-object v0, v13

    move-object v5, v10

    move-object v6, v12

    .line 30
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 31
    iget-object v0, p1, Li18;->d:Ljava/util/HashSet;

    .line 32
    invoke-static {v0, v13}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 33
    sget-object v4, Lmo6;->e:Lmo6;

    .line 34
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 35
    iget-object v1, p1, Li18;->a:Lk18;

    .line 36
    new-instance v11, Lp08;

    .line 37
    const-class v0, Lyn6;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    move-object v0, v11

    .line 38
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 39
    iget-object p1, p1, Li18;->d:Ljava/util/HashSet;

    .line 40
    invoke-static {p1, v11}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 41
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    .line 42
    :cond_2
    check-cast p1, Li18;

    .line 43
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v4, Ljo6;->e:Ljo6;

    .line 45
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 46
    iget-object v1, p1, Li18;->a:Lk18;

    .line 47
    sget-object v12, Lhk7;->e:Lhk7;

    .line 48
    new-instance v13, Lp08;

    .line 49
    const-class v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v3, 0x0

    move-object v0, v13

    move-object v5, v10

    move-object v6, v12

    .line 50
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 51
    iget-object v0, p1, Li18;->d:Ljava/util/HashSet;

    .line 52
    invoke-static {v0, v13}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 53
    sget-object v4, Lko6;->e:Lko6;

    .line 54
    invoke-virtual {p1, v11, v11}, Li18;->a(ZZ)Lr08;

    move-result-object v7

    .line 55
    iget-object v1, p1, Li18;->a:Lk18;

    .line 56
    new-instance v11, Lp08;

    .line 57
    const-class v0, Leq;

    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v2

    move-object v0, v11

    .line 58
    invoke-direct/range {v0 .. v9}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 59
    iget-object p1, p1, Li18;->d:Ljava/util/HashSet;

    .line 60
    invoke-static {p1, v11}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 61
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
