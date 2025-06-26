.class public final enum Lb64;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le94;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb64;",
        ">;",
        "Le94;"
    }
.end annotation


# static fields
.field public static final enum f:Lb64;

.field public static final enum g:Lb64;

.field public static final enum h:Lb64;

.field public static final enum i:Lb64;

.field public static final enum j:Lb64;

.field public static final synthetic k:[Lb64;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lb64;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lb64;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb64;->f:Lb64;

    new-instance v1, Lb64;

    const-string v3, "STRING"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lb64;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lb64;->g:Lb64;

    new-instance v3, Lb64;

    const-string v5, "NUMBER"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lb64;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lb64;->h:Lb64;

    new-instance v5, Lb64;

    const-string v7, "BOOLEAN"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lb64;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lb64;->i:Lb64;

    new-instance v7, Lb64;

    const-string v9, "STATEMENT"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lb64;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lb64;->j:Lb64;

    const/4 v9, 0x5

    new-array v9, v9, [Lb64;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lb64;->k:[Lb64;

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

    iput p3, p0, Lb64;->e:I

    return-void
.end method

.method public static values()[Lb64;
    .locals 1

    sget-object v0, Lb64;->k:[Lb64;

    .line 1
    invoke-virtual {v0}, [Lb64;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb64;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lb64;

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

    iget v1, p0, Lb64;->e:I

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
