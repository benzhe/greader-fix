.class public final enum Lh44;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le94;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh44;",
        ">;",
        "Le94;"
    }
.end annotation


# static fields
.field public static final enum f:Lh44;

.field public static final enum g:Lh44;

.field public static final enum h:Lh44;

.field public static final enum i:Lh44;

.field public static final enum j:Lh44;

.field public static final enum k:Lh44;

.field public static final enum l:Lh44;

.field public static final synthetic m:[Lh44;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lh44;

    const-string v1, "UNKNOWN_MATCH_TYPE"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lh44;->f:Lh44;

    new-instance v1, Lh44;

    const-string v3, "REGEXP"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lh44;->g:Lh44;

    new-instance v3, Lh44;

    const-string v5, "BEGINS_WITH"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lh44;->h:Lh44;

    new-instance v5, Lh44;

    const-string v7, "ENDS_WITH"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lh44;->i:Lh44;

    new-instance v7, Lh44;

    const-string v9, "PARTIAL"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lh44;->j:Lh44;

    new-instance v9, Lh44;

    const-string v11, "EXACT"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lh44;->k:Lh44;

    new-instance v11, Lh44;

    const-string v13, "IN_LIST"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lh44;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lh44;->l:Lh44;

    const/4 v13, 0x7

    new-array v13, v13, [Lh44;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lh44;->m:[Lh44;

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

    iput p3, p0, Lh44;->e:I

    return-void
.end method

.method public static i(I)Lh44;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lh44;->l:Lh44;

    return-object p0

    :pswitch_1
    sget-object p0, Lh44;->k:Lh44;

    return-object p0

    :pswitch_2
    sget-object p0, Lh44;->j:Lh44;

    return-object p0

    :pswitch_3
    sget-object p0, Lh44;->i:Lh44;

    return-object p0

    :pswitch_4
    sget-object p0, Lh44;->h:Lh44;

    return-object p0

    :pswitch_5
    sget-object p0, Lh44;->g:Lh44;

    return-object p0

    :pswitch_6
    sget-object p0, Lh44;->f:Lh44;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lh44;
    .locals 1

    sget-object v0, Lh44;->m:[Lh44;

    .line 1
    invoke-virtual {v0}, [Lh44;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh44;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lh44;

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

    iget v1, p0, Lh44;->e:I

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
