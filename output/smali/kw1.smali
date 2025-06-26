.class public final enum Lkw1;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkw1;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lkw1;

.field public static final enum g:Lkw1;

.field public static final enum h:Lkw1;

.field public static final enum i:Lkw1;

.field public static final synthetic j:[Lkw1;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lkw1;

    const-string v1, "ENUM_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkw1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkw1;->f:Lkw1;

    .line 2
    new-instance v1, Lkw1;

    const-string v3, "ENUM_TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lkw1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkw1;->g:Lkw1;

    .line 3
    new-instance v3, Lkw1;

    const-string v5, "ENUM_FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lkw1;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkw1;->h:Lkw1;

    .line 4
    new-instance v5, Lkw1;

    const-string v7, "ENUM_UNKNOWN"

    const/4 v8, 0x3

    const/16 v9, 0x3e8

    invoke-direct {v5, v7, v8, v9}, Lkw1;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lkw1;->i:Lkw1;

    const/4 v7, 0x4

    new-array v7, v7, [Lkw1;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lkw1;->j:[Lkw1;

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
    iput p3, p0, Lkw1;->e:I

    return-void
.end method

.method public static values()[Lkw1;
    .locals 1

    .line 1
    sget-object v0, Lkw1;->j:[Lkw1;

    invoke-virtual {v0}, [Lkw1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkw1;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lkw1;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lkw1;

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

    .line 6
    iget v1, p0, Lkw1;->e:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
