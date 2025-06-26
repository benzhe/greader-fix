.class public final Lc68$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation


# instance fields
.field public final e:Lm68;


# direct methods
.method public constructor <init>(Lm68;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textStyle"

    .line 2
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lm68;

    iput-object p1, p0, Lc68$s;->e:Lm68;

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    sget-object v0, Lz68;->a:La78;

    invoke-virtual {p1, v0}, Le68;->c(La78;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz48;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lz48;->L()Lk78;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lk78;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    sget-object v3, Lo48;->g:Lo48;

    invoke-virtual {v2, v3}, Lk78;->a(Lo48;)La58;

    move-result-object v2
    :try_end_0
    .catch Ll78; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v2, v0

    .line 5
    :goto_0
    instance-of v2, v2, La58;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lz48;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    .line 7
    :cond_2
    iget-object v2, p1, Le68;->a:Lu68;

    .line 8
    sget-object v4, Lq68;->K:Lq68;

    invoke-interface {v2, v4}, Lu68;->y(Ly68;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-interface {v2, v4}, Lu68;->D(Ly68;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo48;->N(J)Lo48;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Lz48;->L()Lk78;

    move-result-object v4

    invoke-virtual {v4, v2}, Lk78;->d(Lo48;)Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {v0}, Lz48;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 12
    iget-object v4, p0, Lc68$s;->e:Lm68;

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lm68;->values()[Lm68;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    aget-object v4, v5, v4

    .line 15
    sget-object v5, Lm68;->e:Lm68;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    .line 16
    :cond_4
    iget-object p1, p1, Le68;->b:Ljava/util/Locale;

    .line 17
    invoke-virtual {v0, v2, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ZoneText("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc68$s;->e:Lm68;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
