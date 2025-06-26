.class public final Lvo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Lpo6;",
        "Lvb7<",
        "+",
        "Lpo6;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lvo6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvo6;

    invoke-direct {v0}, Lvo6;-><init>()V

    sput-object v0, Lvo6;->e:Lvo6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lpo6;

    const-string v0, "promoCode"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lu48;->g:I

    invoke-static {}, Lz48;->M()Lz48;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Lo48;->M(J)Lo48;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lz48;->L()Lk78;

    move-result-object v0

    invoke-virtual {v0, v1}, Lk78;->a(Lo48;)La58;

    move-result-object v0

    invoke-static {v1, v0}, Lu48;->N(Lo48;Lz48;)Lu48;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lpo6;->e:Lu48;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p1, Lpo6;->f:Lu48;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lu48;->L(Lu48;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p1, Lpo6;->f:Lu48;

    .line 11
    invoke-virtual {v0, v1}, Lu48;->M(Lu48;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_0
    sget-object v0, Lbg7;->e:Lbg7;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    .line 14
    iget-object v2, p1, Lpo6;->f:Lu48;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v0, v2}, Lu48;->M(Lu48;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_2
    sget-object p1, Lbg7;->e:Lbg7;

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 18
    iget-object v2, p1, Lpo6;->f:Lu48;

    if-nez v2, :cond_5

    .line 19
    invoke-virtual {v0, v1}, Lu48;->L(Lu48;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    sget-object p1, Lbg7;->e:Lbg7;

    goto :goto_0

    .line 22
    :cond_5
    iget-wide v0, p1, Lpo6;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 23
    iget-wide v2, p1, Lpo6;->g:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_6

    .line 24
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_6
    sget-object p1, Lbg7;->e:Lbg7;

    goto :goto_0

    .line 26
    :cond_7
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method
