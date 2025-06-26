.class public final Lm31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpp2;

.field public final b:Lns1;

.field public final c:Lhl2;


# direct methods
.method public constructor <init>(Lns1;Lhl2;Lpp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lm31;->a:Lpp2;

    .line 3
    iput-object p1, p0, Lm31;->b:Lns1;

    .line 4
    iput-object p2, p0, Lm31;->c:Lhl2;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lp31;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget p0, v0, p0

    if-eq p0, v1, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "u"

    return-object p0

    :cond_0
    const-string p0, "cb"

    return-object p0

    :cond_1
    const-string p0, "ac"

    return-object p0

    :cond_2
    const-string p0, "cc"

    return-object p0

    :cond_3
    const-string p0, "h"

    return-object p0

    :cond_4
    const-string p0, "bb"

    return-object p0
.end method


# virtual methods
.method public final a(JI)V
    .locals 8

    .line 1
    sget-object v0, Ly40;->e5:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lm31;->a:Lpp2;

    .line 6
    invoke-static {v5}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object v5

    iget-object v6, p0, Lm31;->c:Lhl2;

    iget-object v6, v6, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    .line 7
    invoke-virtual {v5, v6}, Lqp2;->b(Lwk2;)Lqp2;

    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, v5, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, v5, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Lm31;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, v5, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {v0, v5}, Lpp2;->b(Lqp2;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lm31;->b:Lns1;

    .line 15
    invoke-virtual {v0}, Lns1;->a()Lms1;

    move-result-object v0

    iget-object v6, p0, Lm31;->c:Lhl2;

    iget-object v6, v6, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    .line 16
    invoke-virtual {v0, v6}, Lms1;->a(Lwk2;)Lms1;

    .line 17
    iget-object v6, v0, Lms1;->a:Ljava/util/Map;

    const-string v7, "action"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object p2, v0, Lms1;->a:Ljava/util/Map;

    invoke-interface {p2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p1, v0, Lms1;->a:Ljava/util/Map;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p3}, Lm31;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p2, v0, Lms1;->a:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Lms1;->b()V

    return-void
.end method
