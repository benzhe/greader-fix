.class public final enum Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

.field public static final enum f:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

.field public static final enum g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

.field public static final synthetic h:[Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    new-instance v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    const-string v2, "WRAP_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->e:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    const-string v2, "FILL_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->f:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    const-string v2, "WHEN_LARGE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->g:Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->h:[Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;
    .locals 1

    const-class v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    return-object p0
.end method

.method public static values()[Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;
    .locals 1

    sget-object v0, Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->h:[Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    invoke-virtual {v0}, [Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noinnion/android/reader/ui/BaseDialogActivity$a;

    return-object v0
.end method
