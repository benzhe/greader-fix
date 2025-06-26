.class public final enum Liy5;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liy5;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Liy5;

.field public static final enum g:Liy5;

.field public static final enum h:Liy5;

.field public static final enum i:Liy5;

.field public static final synthetic j:[Liy5;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Liy5;

    const-string v1, "UNKNOWN_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Liy5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liy5;->f:Liy5;

    .line 2
    new-instance v1, Liy5;

    const-string v3, "APP_LAUNCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Liy5;-><init>(Ljava/lang/String;II)V

    sput-object v1, Liy5;->g:Liy5;

    .line 3
    new-instance v3, Liy5;

    const-string v5, "ON_FOREGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Liy5;-><init>(Ljava/lang/String;II)V

    sput-object v3, Liy5;->h:Liy5;

    .line 4
    new-instance v5, Liy5;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Liy5;-><init>(Ljava/lang/String;II)V

    sput-object v5, Liy5;->i:Liy5;

    const/4 v7, 0x4

    new-array v7, v7, [Liy5;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Liy5;->j:[Liy5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Liy5;->e:I

    return-void
.end method

.method public static i(I)Liy5;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Liy5;->h:Liy5;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Liy5;->g:Liy5;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Liy5;->f:Liy5;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Liy5;
    .locals 1

    .line 1
    const-class v0, Liy5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liy5;

    return-object p0
.end method

.method public static values()[Liy5;
    .locals 1

    .line 1
    sget-object v0, Liy5;->j:[Liy5;

    invoke-virtual {v0}, [Liy5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liy5;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Liy5;->i:Liy5;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Liy5;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
