.class public final enum Lsp3$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw63;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsp3$a;",
        ">;",
        "Lw63;"
    }
.end annotation


# static fields
.field public static final enum f:Lsp3$a;

.field public static final enum g:Lsp3$a;

.field public static final enum h:Lsp3$a;

.field public static final enum i:Lsp3$a;

.field public static final enum j:Lsp3$a;

.field public static final enum k:Lsp3$a;

.field public static final enum l:Lsp3$a;

.field public static final enum m:Lsp3$a;

.field public static final enum n:Lsp3$a;

.field public static final enum o:Lsp3$a;

.field public static final enum p:Lsp3$a;

.field public static final synthetic q:[Lsp3$a;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lsp3$a;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsp3$a;->f:Lsp3$a;

    .line 2
    new-instance v1, Lsp3$a;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lsp3$a;->g:Lsp3$a;

    .line 3
    new-instance v3, Lsp3$a;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lsp3$a;->h:Lsp3$a;

    .line 4
    new-instance v5, Lsp3$a;

    const-string v7, "NATIVE_EXPRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lsp3$a;->i:Lsp3$a;

    .line 5
    new-instance v7, Lsp3$a;

    const-string v9, "NATIVE_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lsp3$a;->j:Lsp3$a;

    .line 6
    new-instance v9, Lsp3$a;

    const-string v11, "NATIVE_APP_INSTALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lsp3$a;->k:Lsp3$a;

    .line 7
    new-instance v11, Lsp3$a;

    const-string v13, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lsp3$a;->l:Lsp3$a;

    .line 8
    new-instance v13, Lsp3$a;

    const-string v15, "DFP_BANNER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lsp3$a;->m:Lsp3$a;

    .line 9
    new-instance v15, Lsp3$a;

    const-string v14, "DFP_INTERSTITIAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lsp3$a;->n:Lsp3$a;

    .line 10
    new-instance v14, Lsp3$a;

    const-string v12, "REWARD_BASED_VIDEO_AD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lsp3$a;->o:Lsp3$a;

    .line 11
    new-instance v12, Lsp3$a;

    const-string v10, "BANNER_SEARCH_ADS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lsp3$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lsp3$a;->p:Lsp3$a;

    const/16 v10, 0xb

    new-array v10, v10, [Lsp3$a;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lsp3$a;->q:[Lsp3$a;

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
    iput p3, p0, Lsp3$a;->e:I

    return-void
.end method

.method public static i(I)Lsp3$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lsp3$a;->p:Lsp3$a;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lsp3$a;->o:Lsp3$a;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lsp3$a;->n:Lsp3$a;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lsp3$a;->m:Lsp3$a;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lsp3$a;->l:Lsp3$a;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lsp3$a;->k:Lsp3$a;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lsp3$a;->j:Lsp3$a;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lsp3$a;->i:Lsp3$a;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lsp3$a;->h:Lsp3$a;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lsp3$a;->g:Lsp3$a;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lsp3$a;->f:Lsp3$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lsp3$a;
    .locals 1

    .line 1
    sget-object v0, Lsp3$a;->q:[Lsp3$a;

    invoke-virtual {v0}, [Lsp3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsp3$a;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lsp3$a;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lsp3$a;

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
    iget v1, p0, Lsp3$a;->e:I

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
