.class public final enum Ldj5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldj5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Ldj5;

.field public static final enum g:Ldj5;

.field public static final enum h:Ldj5;

.field public static final enum i:Ldj5;

.field public static final synthetic j:[Ldj5;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ldj5;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ldj5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldj5;->f:Ldj5;

    .line 2
    new-instance v1, Ldj5;

    const-string v4, "USER_SIDELOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Ldj5;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ldj5;->g:Ldj5;

    .line 3
    new-instance v4, Ldj5;

    const-string v6, "TEST_DISTRIBUTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Ldj5;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ldj5;->h:Ldj5;

    .line 4
    new-instance v6, Ldj5;

    const-string v8, "APP_STORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Ldj5;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ldj5;->i:Ldj5;

    new-array v8, v9, [Ldj5;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Ldj5;->j:[Ldj5;

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
    iput p3, p0, Ldj5;->e:I

    return-void
.end method

.method public static i(Ljava/lang/String;)Ldj5;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Ldj5;->i:Ldj5;

    goto :goto_0

    :cond_0
    sget-object p0, Ldj5;->f:Ldj5;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldj5;
    .locals 1

    .line 1
    const-class v0, Ldj5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldj5;

    return-object p0
.end method

.method public static values()[Ldj5;
    .locals 1

    .line 1
    sget-object v0, Ldj5;->j:[Ldj5;

    invoke-virtual {v0}, [Ldj5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldj5;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ldj5;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
