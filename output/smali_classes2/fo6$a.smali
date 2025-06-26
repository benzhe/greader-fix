.class public final Lfo6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfo6;->a(Lsb7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb45<",
        "Luo5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lsb7;


# direct methods
.method public constructor <init>(Lsb7;)V
    .locals 0

    iput-object p1, p0, Lfo6$a;->a:Lsb7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Luo5;

    const-string v0, "document"

    .line 2
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Luo5;->b:Lbu5;

    .line 4
    iget-object v0, v0, Lbu5;->e:Liu5;

    .line 5
    invoke-virtual {v0}, Lvt5;->x()Ljava/lang/String;

    move-result-object v2

    const-string v0, "document.id"

    .line 6
    invoke-static {v2, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-class v0, Ljava/lang/String;

    const-string v1, "product_id"

    invoke-virtual {p1, v1, v0}, Luo5;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v0, "document.getString(\"prod\u2026ener emitter.onComplete()"

    .line 8
    invoke-static {v3, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "reusable"

    invoke-virtual {p1, v1, v0}, Luo5;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "document.getBoolean(\"reusable\") ?: false"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "redeemed_time"

    .line 11
    invoke-virtual {p1, v0}, Luo5;->d(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    const-string v0, "start_time"

    .line 12
    invoke-virtual {p1, v0}, Luo5;->d(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    const-string v1, "it"

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v7, v0, Lcom/google/firebase/Timestamp;->e:J

    .line 14
    invoke-static {v7, v8}, Lo48;->N(J)Lo48;

    move-result-object v0

    sget-object v7, La58;->j:La58;

    invoke-static {v0, v7}, Lu48;->N(Lo48;Lz48;)Lu48;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    :goto_2
    const-string v7, "end_time"

    .line 15
    invoke-virtual {p1, v7}, Luo5;->d(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v7, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-wide v6, v7, Lcom/google/firebase/Timestamp;->e:J

    .line 17
    invoke-static {v6, v7}, Lo48;->N(J)Lo48;

    move-result-object v1

    sget-object v6, La58;->j:La58;

    invoke-static {v1, v6}, Lu48;->N(Lo48;Lz48;)Lu48;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    const-string v1, "count"

    .line 18
    invoke-virtual {p1, v1}, Luo5;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_4
    const-string v6, "document.getLong(\"count\") ?: 0"

    invoke-static {v1, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v1, "limit"

    .line 19
    invoke-virtual {p1, v1}, Luo5;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_5
    const-string v1, "document.getLong(\"limit\") ?: 0"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 20
    new-instance p1, Lpo6;

    move-object v1, p1

    move-object v6, v0

    move-wide v8, v10

    move-wide v10, v12

    invoke-direct/range {v1 .. v11}, Lpo6;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLu48;Lu48;JJ)V

    .line 21
    iget-object v0, p0, Lfo6$a;->a:Lsb7;

    check-cast v0, Lag7$a;

    invoke-virtual {v0, p1}, Lag7$a;->c(Ljava/lang/Object;)V

    goto :goto_6

    .line 22
    :cond_6
    iget-object p1, p0, Lfo6$a;->a:Lsb7;

    check-cast p1, Lag7$a;

    invoke-virtual {p1}, Lag7$a;->a()V

    :goto_6
    return-void
.end method
