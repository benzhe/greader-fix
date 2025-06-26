.class public final enum Lc68$n;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc68$n;",
        ">;",
        "Lc68$e;"
    }
.end annotation


# static fields
.field public static final enum e:Lc68$n;

.field public static final enum f:Lc68$n;

.field public static final enum g:Lc68$n;

.field public static final enum h:Lc68$n;

.field public static final synthetic i:[Lc68$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lc68$n;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc68$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc68$n;->e:Lc68$n;

    .line 2
    new-instance v1, Lc68$n;

    const-string v3, "INSENSITIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc68$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc68$n;->f:Lc68$n;

    .line 3
    new-instance v3, Lc68$n;

    const-string v5, "STRICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc68$n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc68$n;->g:Lc68$n;

    .line 4
    new-instance v5, Lc68$n;

    const-string v7, "LENIENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc68$n;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc68$n;->h:Lc68$n;

    const/4 v7, 0x4

    new-array v7, v7, [Lc68$n;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lc68$n;->i:[Lc68$n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc68$n;
    .locals 1

    .line 1
    const-class v0, Lc68$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc68$n;

    return-object p0
.end method

.method public static values()[Lc68$n;
    .locals 1

    .line 1
    sget-object v0, Lc68$n;->i:[Lc68$n;

    invoke-virtual {v0}, [Lc68$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc68$n;

    return-object v0
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ParseStrict(true)"

    return-object v0

    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0
.end method
