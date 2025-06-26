.class public final synthetic Ltl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# static fields
.field public static final a:Lkb0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltl1;

    invoke-direct {v0}, Ltl1;-><init>()V

    sput-object v0, Ltl1;->a:Lkb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    check-cast p1, Lxw0;

    const-string p2, "Show native ad policy validator overlay."

    .line 2
    invoke-static {p2}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lxw0;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
