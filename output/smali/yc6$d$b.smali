.class public final enum Lyc6$d$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc6$d$b;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lyc6$d$b;

.field public static final enum g:Lyc6$d$b;

.field public static final enum h:Lyc6$d$b;

.field public static final synthetic i:[Lyc6$d$b;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lyc6$d$b;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lyc6$d$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc6$d$b;->f:Lyc6$d$b;

    .line 2
    new-instance v1, Lyc6$d$b;

    const-string v3, "AND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lyc6$d$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc6$d$b;->g:Lyc6$d$b;

    .line 3
    new-instance v3, Lyc6$d$b;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lyc6$d$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lyc6$d$b;->h:Lyc6$d$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lyc6$d$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lyc6$d$b;->i:[Lyc6$d$b;

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
    iput p3, p0, Lyc6$d$b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc6$d$b;
    .locals 1

    .line 1
    const-class v0, Lyc6$d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc6$d$b;

    return-object p0
.end method

.method public static values()[Lyc6$d$b;
    .locals 1

    .line 1
    sget-object v0, Lyc6$d$b;->i:[Lyc6$d$b;

    invoke-virtual {v0}, [Lyc6$d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc6$d$b;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lyc6$d$b;->h:Lyc6$d$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lyc6$d$b;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
