.class public final Lem7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn7;
.implements Ldm7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhn7<",
        "Ljava/lang/Object;",
        ">;",
        "Ldm7;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lkj7<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lem7$a;


# instance fields
.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lem7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lem7$a;-><init>(Lgm7;)V

    sput-object v0, Lem7;->j:Lem7$a;

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lel7;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-class v2, Lpl7;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-class v2, Ltl7;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-class v5, Lul7;

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-class v5, Lvl7;

    aput-object v5, v0, v2

    const/4 v2, 0x5

    .line 2
    const-class v5, Lwl7;

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-class v5, Lxl7;

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-class v5, Lyl7;

    aput-object v5, v0, v2

    const/16 v2, 0x8

    const-class v5, Lzl7;

    aput-object v5, v0, v2

    const/16 v2, 0x9

    const-class v5, Lam7;

    aput-object v5, v0, v2

    .line 3
    const-class v2, Lfl7;

    const/16 v5, 0xa

    aput-object v2, v0, v5

    const/16 v2, 0xb

    const-class v6, Lgl7;

    aput-object v6, v0, v2

    const/16 v2, 0xc

    const-class v6, Lhl7;

    aput-object v6, v0, v2

    const/16 v2, 0xd

    const-class v6, Lil7;

    aput-object v6, v0, v2

    const/16 v2, 0xe

    const-class v6, Ljl7;

    aput-object v6, v0, v2

    const/16 v2, 0xf

    .line 4
    const-class v6, Lkl7;

    aput-object v6, v0, v2

    const/16 v2, 0x10

    const-class v6, Lll7;

    aput-object v6, v0, v2

    const/16 v2, 0x11

    const-class v6, Lml7;

    aput-object v6, v0, v2

    const/16 v2, 0x12

    const-class v6, Lnl7;

    aput-object v6, v0, v2

    const/16 v2, 0x13

    const-class v6, Lol7;

    aput-object v6, v0, v2

    const/16 v2, 0x14

    .line 5
    const-class v6, Lql7;

    aput-object v6, v0, v2

    const/16 v2, 0x15

    const-class v6, Lrl7;

    aput-object v6, v0, v2

    const/16 v2, 0x16

    const-class v6, Lsl7;

    aput-object v6, v0, v2

    .line 6
    invoke-static {v0}, Lek7;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ln56;->x(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_0

    .line 9
    check-cast v5, Ljava/lang/Class;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    new-instance v7, Lrj7;

    invoke-direct {v7, v5, v3}, Lrj7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lek7;->q()V

    throw v1

    .line 14
    :cond_1
    invoke-static {v2}, Lek7;->t(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lem7;->f:Ljava/util/Map;

    const-string v0, "boolean"

    const-string v2, "kotlin.Boolean"

    const-string v3, "char"

    const-string v5, "kotlin.Char"

    .line 15
    invoke-static {v0, v2, v3, v5}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "byte"

    const-string v6, "kotlin.Byte"

    .line 16
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "short"

    const-string v7, "kotlin.Short"

    .line 17
    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "int"

    const-string v8, "kotlin.Int"

    .line 18
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "float"

    const-string v9, "kotlin.Float"

    .line 19
    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "long"

    const-string v10, "kotlin.Long"

    .line 20
    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "double"

    const-string v11, "kotlin.Double"

    .line 21
    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sput-object v0, Lem7;->g:Ljava/util/HashMap;

    const-string v3, "java.lang.Boolean"

    const-string v12, "java.lang.Character"

    .line 23
    invoke-static {v3, v2, v12, v5}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "java.lang.Byte"

    .line 24
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Short"

    .line 25
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Integer"

    .line 26
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Float"

    .line 27
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Long"

    .line 28
    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "java.lang.Double"

    .line 29
    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sput-object v2, Lem7;->h:Ljava/util/HashMap;

    const-string v3, "java.lang.Object"

    const-string v5, "kotlin.Any"

    const-string v6, "java.lang.String"

    const-string v7, "kotlin.String"

    .line 31
    invoke-static {v3, v5, v6, v7}, Ljo;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v5, "java.lang.CharSequence"

    const-string v6, "kotlin.CharSequence"

    .line 32
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Throwable"

    const-string v6, "kotlin.Throwable"

    .line 33
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Cloneable"

    const-string v6, "kotlin.Cloneable"

    .line 34
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Number"

    const-string v6, "kotlin.Number"

    .line 35
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Comparable"

    const-string v6, "kotlin.Comparable"

    .line 36
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Enum"

    const-string v6, "kotlin.Enum"

    .line 37
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.annotation.Annotation"

    const-string v6, "kotlin.Annotation"

    .line 38
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.lang.Iterable"

    const-string v6, "kotlin.collections.Iterable"

    .line 39
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Iterator"

    const-string v6, "kotlin.collections.Iterator"

    .line 40
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Collection"

    const-string v6, "kotlin.collections.Collection"

    .line 41
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.List"

    const-string v6, "kotlin.collections.List"

    .line 42
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Set"

    const-string v6, "kotlin.collections.Set"

    .line 43
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.ListIterator"

    const-string v6, "kotlin.collections.ListIterator"

    .line 44
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Map"

    const-string v6, "kotlin.collections.Map"

    .line 45
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "java.util.Map$Entry"

    const-string v6, "kotlin.collections.Map.Entry"

    .line 46
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.jvm.internal.StringCompanionObject"

    const-string v6, "kotlin.String.Companion"

    .line 47
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.jvm.internal.EnumCompanionObject"

    const-string v6, "kotlin.Enum.Companion"

    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "primitiveFqNames.values"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v5, 0x2e

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kotlin.jvm.internal."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "kotlinName"

    invoke-static {v2, v7}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5, v1, v4}, Lco7;->C(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "CompanionObject"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".Companion"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_2
    sget-object v0, Lem7;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 56
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kotlin.Function"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 57
    :cond_3
    sput-object v3, Lem7;->i:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ln56;->v1(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 59
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-static {v3, v5, v1, v4}, Lco7;->C(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lem7;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lem7;->e:Ljava/lang/Class;

    const-string v1, "jClass"

    .line 2
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lem7;->f:Ljava/util/Map;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 5
    instance-of v1, p1, Lkj7;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 6
    instance-of v1, p1, Lhm7;

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, Lhm7;

    invoke-interface {p1}, Lhm7;->getArity()I

    move-result p1

    goto/16 :goto_0

    .line 8
    :cond_0
    instance-of v1, p1, Lel7;

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 9
    :cond_1
    instance-of v1, p1, Lpl7;

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto/16 :goto_0

    .line 10
    :cond_2
    instance-of v1, p1, Ltl7;

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    goto/16 :goto_0

    .line 11
    :cond_3
    instance-of v1, p1, Lul7;

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    goto/16 :goto_0

    .line 12
    :cond_4
    instance-of v1, p1, Lvl7;

    if-eqz v1, :cond_5

    const/4 p1, 0x4

    goto/16 :goto_0

    .line 13
    :cond_5
    instance-of v1, p1, Lwl7;

    if-eqz v1, :cond_6

    const/4 p1, 0x5

    goto/16 :goto_0

    .line 14
    :cond_6
    instance-of v1, p1, Lxl7;

    if-eqz v1, :cond_7

    const/4 p1, 0x6

    goto/16 :goto_0

    .line 15
    :cond_7
    instance-of v1, p1, Lyl7;

    if-eqz v1, :cond_8

    const/4 p1, 0x7

    goto/16 :goto_0

    .line 16
    :cond_8
    instance-of v1, p1, Lzl7;

    if-eqz v1, :cond_9

    const/16 p1, 0x8

    goto/16 :goto_0

    .line 17
    :cond_9
    instance-of v1, p1, Lam7;

    if-eqz v1, :cond_a

    const/16 p1, 0x9

    goto/16 :goto_0

    .line 18
    :cond_a
    instance-of v1, p1, Lfl7;

    if-eqz v1, :cond_b

    const/16 p1, 0xa

    goto :goto_0

    .line 19
    :cond_b
    instance-of v1, p1, Lgl7;

    if-eqz v1, :cond_c

    const/16 p1, 0xb

    goto :goto_0

    .line 20
    :cond_c
    instance-of v1, p1, Lhl7;

    if-eqz v1, :cond_d

    const/16 p1, 0xc

    goto :goto_0

    .line 21
    :cond_d
    instance-of v1, p1, Lil7;

    if-eqz v1, :cond_e

    const/16 p1, 0xd

    goto :goto_0

    .line 22
    :cond_e
    instance-of v1, p1, Ljl7;

    if-eqz v1, :cond_f

    const/16 p1, 0xe

    goto :goto_0

    .line 23
    :cond_f
    instance-of v1, p1, Lkl7;

    if-eqz v1, :cond_10

    const/16 p1, 0xf

    goto :goto_0

    .line 24
    :cond_10
    instance-of v1, p1, Lll7;

    if-eqz v1, :cond_11

    const/16 p1, 0x10

    goto :goto_0

    .line 25
    :cond_11
    instance-of v1, p1, Lml7;

    if-eqz v1, :cond_12

    const/16 p1, 0x11

    goto :goto_0

    .line 26
    :cond_12
    instance-of v1, p1, Lnl7;

    if-eqz v1, :cond_13

    const/16 p1, 0x12

    goto :goto_0

    .line 27
    :cond_13
    instance-of v1, p1, Lol7;

    if-eqz v1, :cond_14

    const/16 p1, 0x13

    goto :goto_0

    .line 28
    :cond_14
    instance-of v1, p1, Lql7;

    if-eqz v1, :cond_15

    const/16 p1, 0x14

    goto :goto_0

    .line 29
    :cond_15
    instance-of v1, p1, Lrl7;

    if-eqz v1, :cond_16

    const/16 p1, 0x15

    goto :goto_0

    .line 30
    :cond_16
    instance-of p1, p1, Lsl7;

    if-eqz p1, :cond_17

    const/16 p1, 0x16

    goto :goto_0

    :cond_17
    const/4 p1, -0x1

    :goto_0
    if-ne p1, v0, :cond_18

    goto :goto_1

    :cond_18
    const/4 v2, 0x0

    goto :goto_1

    .line 31
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "$this$kotlin"

    .line 32
    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ln56;->N0(Lhn7;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    :cond_1a
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    return v2
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lem7;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lem7;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ln56;->N0(Lhn7;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lhn7;

    invoke-static {p1}, Ln56;->N0(Lhn7;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ln56;->N0(Lhn7;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lem7;->e:Ljava/lang/Class;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
