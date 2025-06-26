.class public final Lj08;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Li18;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lj08;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Li18;

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v5, Li08;

    invoke-direct {v5, p0}, Li08;-><init>(Lj08;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Li18;->a(ZZ)Lr08;

    move-result-object v8

    .line 4
    iget-object v2, p1, Li18;->a:Lk18;

    .line 5
    sget-object v7, Lhk7;->e:Lhk7;

    .line 6
    new-instance v0, Lp08;

    .line 7
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v3

    .line 8
    sget-object v6, Lq08;->e:Lq08;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v4, 0x0

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v10}, Lp08;-><init>(Lk18;Lhn7;Lk18;Ltl7;Lq08;Ljava/util/List;Lr08;Ls08;I)V

    .line 10
    iget-object p1, p1, Li18;->d:Ljava/util/HashSet;

    .line 11
    invoke-static {p1, v0}, Lkt7;->a(Ljava/util/HashSet;Lp08;)V

    .line 12
    const-class p1, Landroid/app/Application;

    invoke-static {p1}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object p1

    const-string v1, "$this$bind"

    .line 13
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clazz"

    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lp08;->f:Ljava/util/List;

    .line 15
    invoke-static {v1, p1}, Lek7;->p(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "<set-?>"

    .line 16
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, v0, Lp08;->f:Ljava/util/List;

    .line 18
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
