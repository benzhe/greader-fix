.class public final enum Lb44;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le94;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb44;",
        ">;",
        "Le94;"
    }
.end annotation


# static fields
.field public static final enum f:Lb44;

.field public static final enum g:Lb44;

.field public static final enum h:Lb44;

.field public static final enum i:Lb44;

.field public static final enum j:Lb44;

.field public static final synthetic k:[Lb44;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lb44;

    const-string v1, "UNKNOWN_COMPARISON_TYPE"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lb44;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb44;->f:Lb44;

    new-instance v1, Lb44;

    const-string v3, "LESS_THAN"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lb44;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lb44;->g:Lb44;

    new-instance v3, Lb44;

    const-string v5, "GREATER_THAN"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lb44;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lb44;->h:Lb44;

    new-instance v5, Lb44;

    const-string v7, "EQUAL"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lb44;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lb44;->i:Lb44;

    new-instance v7, Lb44;

    const-string v9, "BETWEEN"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lb44;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lb44;->j:Lb44;

    const/4 v9, 0x5

    new-array v9, v9, [Lb44;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lb44;->k:[Lb44;

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

    iput p3, p0, Lb44;->e:I

    return-void
.end method

.method public static i(I)Lb44;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lb44;->j:Lb44;

    return-object p0

    :cond_1
    sget-object p0, Lb44;->i:Lb44;

    return-object p0

    :cond_2
    sget-object p0, Lb44;->h:Lb44;

    return-object p0

    :cond_3
    sget-object p0, Lb44;->g:Lb44;

    return-object p0

    :cond_4
    sget-object p0, Lb44;->f:Lb44;

    return-object p0
.end method

.method public static values()[Lb44;
    .locals 1

    sget-object v0, Lb44;->k:[Lb44;

    .line 1
    invoke-virtual {v0}, [Lb44;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb44;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lb44;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb44;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
