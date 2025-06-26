.class public final Le78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le78$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Le78;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Lm48;

.field public final f:I

.field public final transient g:Ly68;

.field public final transient h:Ly68;

.field public final transient i:Ly68;

.field public final transient j:Ly68;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Le78;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    new-instance v0, Le78;

    sget-object v2, Lm48;->e:Lm48;

    invoke-direct {v0, v2, v1}, Le78;-><init>(Lm48;I)V

    .line 3
    sget-object v0, Lm48;->k:Lm48;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le78;->a(Lm48;I)Le78;

    return-void
.end method

.method public constructor <init>(Lm48;I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Le78$a;

    sget-object v3, Lr68;->m:Lr68;

    sget-object v7, Lr68;->n:Lr68;

    sget-object v5, Le78$a;->j:Ld78;

    const-string v1, "DayOfWeek"

    move-object v0, v6

    move-object v2, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Le78$a;-><init>(Ljava/lang/String;Le78;Lb78;Lb78;Ld78;)V

    .line 3
    iput-object v6, p0, Le78;->g:Ly68;

    .line 4
    new-instance v6, Le78$a;

    sget-object v4, Lr68;->o:Lr68;

    sget-object v5, Le78$a;->k:Ld78;

    const-string v1, "WeekOfMonth"

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Le78$a;-><init>(Ljava/lang/String;Le78;Lb78;Lb78;Ld78;)V

    .line 5
    iput-object v6, p0, Le78;->h:Ly68;

    .line 6
    new-instance v0, Le78$a;

    sget-object v0, Lr68;->p:Lr68;

    sget-object v0, Le78$a;->l:Ld78;

    .line 7
    new-instance v6, Le78$a;

    sget-object v8, Ls68;->a:Lb78;

    sget-object v5, Le78$a;->m:Ld78;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v0, v6

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Le78$a;-><init>(Ljava/lang/String;Le78;Lb78;Lb78;Ld78;)V

    .line 8
    iput-object v6, p0, Le78;->i:Ly68;

    .line 9
    new-instance v6, Le78$a;

    sget-object v4, Lr68;->u:Lr68;

    sget-object v5, Le78$a;->n:Ld78;

    const-string v1, "WeekBasedYear"

    move-object v0, v6

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Le78$a;-><init>(Ljava/lang/String;Le78;Lb78;Lb78;Ld78;)V

    .line 10
    iput-object v6, p0, Le78;->j:Ly68;

    const-string v0, "firstDayOfWeek"

    .line 11
    invoke-static {p1, v0}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 12
    iput-object p1, p0, Le78;->e:Lm48;

    .line 13
    iput p2, p0, Le78;->f:I

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lm48;I)Le78;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Le78;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le78;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Le78;

    invoke-direct {v2, p0, p1}, Le78;-><init>(Lm48;I)V

    .line 4
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Le78;

    :cond_0
    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le78;->e:Lm48;

    iget v1, p0, Le78;->f:I

    invoke-static {v0, v1}, Le78;->a(Lm48;I)Le78;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Invalid WeekFields"

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le78;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Le78;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le78;->e:Lm48;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Le78;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WeekFields["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le78;->e:Lm48;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Le78;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
