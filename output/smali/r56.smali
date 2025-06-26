.class public Lr56;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr56$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Luy5$b;",
            "Lgz5;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Luy5$a;",
            "Lly5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr56$a;

.field public final b:Lpe5;

.field public final c:Lz96;

.field public final d:Lz86;

.field public final e:Lbf5;

.field public final f:Lv26;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lr56;->g:Ljava/util/Map;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lr56;->h:Ljava/util/Map;

    .line 3
    sget-object v2, Luy5$b;->e:Luy5$b;

    sget-object v3, Lgz5;->f:Lgz5;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Luy5$b;->f:Luy5$b;

    sget-object v3, Lgz5;->g:Lgz5;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Luy5$b;->g:Luy5$b;

    sget-object v3, Lgz5;->h:Lgz5;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Luy5$b;->h:Luy5$b;

    sget-object v3, Lgz5;->i:Lgz5;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Luy5$a;->f:Luy5$a;

    sget-object v2, Lly5;->g:Lly5;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Luy5$a;->g:Luy5$a;

    sget-object v2, Lly5;->h:Lly5;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Luy5$a;->h:Luy5$a;

    sget-object v2, Lly5;->i:Lly5;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Luy5$a;->e:Luy5$a;

    sget-object v2, Lly5;->f:Lly5;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr56$a;Lbf5;Lpe5;Lz96;Lz86;Lv26;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr56;->a:Lr56$a;

    .line 3
    iput-object p2, p0, Lr56;->e:Lbf5;

    .line 4
    iput-object p3, p0, Lr56;->b:Lpe5;

    .line 5
    iput-object p4, p0, Lr56;->c:Lz96;

    .line 6
    iput-object p5, p0, Lr56;->d:Lz86;

    .line 7
    iput-object p6, p0, Lr56;->f:Lv26;

    return-void
.end method


# virtual methods
.method public final a(Lj96;Ljava/lang/String;)Ldy5$b;
    .locals 3

    .line 1
    invoke-static {}, Ldy5;->J()Ldy5$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 3
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Ldy5;

    const-string v2, "19.1.3"

    invoke-static {v1, v2}, Ldy5;->G(Ldy5;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lr56;->b:Lpe5;

    .line 5
    invoke-virtual {v1}, Lpe5;->a()V

    .line 6
    iget-object v1, v1, Lpe5;->c:Lve5;

    .line 7
    iget-object v1, v1, Lve5;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 9
    iget-object v2, v0, Lgj6$a;->f:Lgj6;

    check-cast v2, Ldy5;

    invoke-static {v2, v1}, Ldy5;->F(Ldy5;Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lj96;->b:Lf96;

    .line 11
    iget-object p1, p1, Lf96;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 13
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Ldy5;

    invoke-static {v1, p1}, Ldy5;->H(Ldy5;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ley5;->E()Ley5$b;

    move-result-object p1

    iget-object v1, p0, Lr56;->b:Lpe5;

    .line 15
    invoke-virtual {v1}, Lpe5;->a()V

    .line 16
    iget-object v1, v1, Lpe5;->c:Lve5;

    .line 17
    iget-object v1, v1, Lve5;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 19
    iget-object v2, p1, Lgj6$a;->f:Lgj6;

    check-cast v2, Ley5;

    invoke-static {v2, v1}, Ley5;->C(Ley5;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 21
    iget-object v1, p1, Lgj6$a;->f:Lgj6;

    check-cast v1, Ley5;

    invoke-static {v1, p2}, Ley5;->D(Ley5;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 23
    iget-object p2, v0, Lgj6$a;->f:Lgj6;

    check-cast p2, Ldy5;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Ley5;

    invoke-static {p2, p1}, Ldy5;->I(Ldy5;Ley5;)V

    .line 24
    iget-object p1, p0, Lr56;->d:Lz86;

    .line 25
    invoke-interface {p1}, Lz86;->a()J

    move-result-wide p1

    .line 26
    invoke-virtual {v0}, Lgj6$a;->o()V

    .line 27
    iget-object v1, v0, Lgj6$a;->f:Lgj6;

    check-cast v1, Ldy5;

    invoke-static {v1, p1, p2}, Ldy5;->C(Ldy5;J)V

    return-object v0
.end method

.method public final b(Lb96;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lb96;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Lj96;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "FIAM.Headless"

    .line 1
    iget-object p1, p1, Lj96;->b:Lf96;

    .line 2
    iget-object v1, p1, Lf96;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lf96;->b:Ljava/lang/String;

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_nmid"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_nmn"

    .line 6
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lr56;->d:Lz86;

    invoke-interface {p1}, Lz86;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int p1, v3

    const-string v3, "_ndt"

    .line 8
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Error while parsing use_device_time in FIAM event: "

    .line 9
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending event="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " params="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lr56;->e:Lbf5;

    if-eqz p1, :cond_0

    const-string v0, "fiam"

    .line 13
    invoke-interface {p1, v0, p2, v2}, Lbf5;->W(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_1

    .line 14
    iget-object p1, p0, Lr56;->e:Lbf5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fiam:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ln"

    invoke-interface {p1, v0, p3, p2}, Lbf5;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p1, "Unable to log event: analytics library is missing"

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
