.class public final enum Lhk6;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhk6;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lhk6;

.field public static final enum g:Lhk6;

.field public static final synthetic h:[Lhk6;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lhk6;

    const-string v1, "NULL_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhk6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhk6;->f:Lhk6;

    .line 2
    new-instance v1, Lhk6;

    const-string v3, "UNRECOGNIZED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lhk6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhk6;->g:Lhk6;

    const/4 v3, 0x2

    new-array v3, v3, [Lhk6;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lhk6;->h:[Lhk6;

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
    iput p3, p0, Lhk6;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhk6;
    .locals 1

    .line 1
    const-class v0, Lhk6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhk6;

    return-object p0
.end method

.method public static values()[Lhk6;
    .locals 1

    .line 1
    sget-object v0, Lhk6;->h:[Lhk6;

    invoke-virtual {v0}, [Lhk6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhk6;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lhk6;->g:Lhk6;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lhk6;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
