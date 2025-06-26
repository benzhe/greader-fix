.class public final enum Lgl1$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgl1$a;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lgl1$a;

.field public static final enum g:Lgl1$a;

.field public static final enum h:Lgl1$a;

.field public static final enum i:Lgl1$a;

.field public static final enum j:Lgl1$a;

.field public static final enum k:Lgl1$a;

.field public static final enum l:Lgl1$a;

.field public static final synthetic m:[Lgl1$a;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lgl1$a;

    const-string v1, "DEBUGGER_STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgl1$a;->f:Lgl1$a;

    .line 2
    new-instance v1, Lgl1$a;

    const-string v3, "DEBUGGER_STATE_NOT_INSTALLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgl1$a;->g:Lgl1$a;

    .line 3
    new-instance v3, Lgl1$a;

    const-string v5, "DEBUGGER_STATE_INSTALLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgl1$a;->h:Lgl1$a;

    .line 4
    new-instance v5, Lgl1$a;

    const-string v7, "DEBUGGER_STATE_ACTIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgl1$a;->i:Lgl1$a;

    .line 5
    new-instance v7, Lgl1$a;

    const-string v9, "DEBUGGER_STATE_ENVVAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgl1$a;->j:Lgl1$a;

    .line 6
    new-instance v9, Lgl1$a;

    const-string v11, "DEBUGGER_STATE_MACHPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgl1$a;->k:Lgl1$a;

    .line 7
    new-instance v11, Lgl1$a;

    const-string v13, "DEBUGGER_STATE_ENVVAR_MACHPORT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgl1$a;->l:Lgl1$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lgl1$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lgl1$a;->m:[Lgl1$a;

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
    iput p3, p0, Lgl1$a;->e:I

    return-void
.end method

.method public static values()[Lgl1$a;
    .locals 1

    .line 1
    sget-object v0, Lgl1$a;->m:[Lgl1$a;

    invoke-virtual {v0}, [Lgl1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgl1$a;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lgl1$a;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lgl1$a;

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
    iget v1, p0, Lgl1$a;->e:I

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
