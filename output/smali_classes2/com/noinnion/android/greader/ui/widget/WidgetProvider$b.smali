.class public final enum Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

.field public static final enum f:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

.field public static final enum g:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

.field public static final enum h:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

.field public static final enum i:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

.field public static final synthetic j:[Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->e:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    new-instance v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const-string v3, "title"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->f:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    new-instance v3, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const-string v5, "sub_title"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->g:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    new-instance v5, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const-string v7, "image"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->h:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    new-instance v7, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const-string v9, "position"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->i:Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->j:[Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;
    .locals 1

    .line 1
    const-class v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    return-object p0
.end method

.method public static values()[Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->j:[Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    invoke-virtual {v0}, [Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noinnion/android/greader/ui/widget/WidgetProvider$b;

    return-object v0
.end method
