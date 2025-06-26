.class public Lsm7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltm7;

.field public static final b:[Lhn7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltm7;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ltm7;

    invoke-direct {v0}, Ltm7;-><init>()V

    :goto_1
    sput-object v0, Lsm7;->a:Ltm7;

    const/4 v0, 0x0

    new-array v0, v0, [Lhn7;

    .line 4
    sput-object v0, Lsm7;->b:[Lhn7;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lhn7;
    .locals 1

    .line 1
    sget-object v0, Lsm7;->a:Ltm7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lem7;

    invoke-direct {v0, p0}, Lem7;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
