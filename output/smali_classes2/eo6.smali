.class public final Leo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb7;


# instance fields
.field public final synthetic a:Lgo6;

.field public final synthetic b:Lpo6;


# direct methods
.method public constructor <init>(Lgo6;Lpo6;)V
    .locals 0

    iput-object p1, p0, Leo6;->a:Lgo6;

    iput-object p2, p0, Leo6;->b:Lpo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lib7;)V
    .locals 5

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Leo6;->a:Lgo6;

    .line 2
    iget-object v0, v0, Lgo6;->a:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "promo_codes"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->a(Ljava/lang/String;)Lpo5;

    move-result-object v0

    iget-object v1, p0, Leo6;->b:Lpo6;

    .line 4
    iget-object v1, v1, Lpo6;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lpo5;->a(Ljava/lang/String;)Lto5;

    move-result-object v0

    const-string v1, "firebaseStore.collection\u2026.document(promoCode.code)"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Leo6;->b:Lpo6;

    .line 7
    iget-boolean v1, v1, Lpo6;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x1

    .line 8
    new-instance v1, Lyo5$d;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lyo5$d;-><init>(Ljava/lang/Number;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "count"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lto5;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Le45;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lyo5;->a:Lyo5$e;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "redeemed_time"

    invoke-virtual {v0, v3, v1, v2}, Lto5;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Le45;

    move-result-object v0

    :goto_0
    const-string v1, "if (promoCode.reusable) \u2026imestamp())\n            }"

    .line 11
    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Leo6$a;

    invoke-direct {v1, p1}, Leo6$a;-><init>(Lib7;)V

    invoke-virtual {v0, v1}, Le45;->b(Lz35;)Le45;

    .line 13
    new-instance v1, Leo6$b;

    invoke-direct {v1, p1}, Leo6$b;-><init>(Lib7;)V

    check-cast v0, Le55;

    .line 14
    sget-object p1, Lg45;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Le55;->e(Ljava/util/concurrent/Executor;La45;)Le45;

    return-void
.end method
