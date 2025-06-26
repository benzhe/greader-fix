.class public final Lj00$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj00;
    .locals 11

    .line 1
    new-instance v10, Lj00;

    iget-object v1, p0, Lj00$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lj00$a;->b:Lh4;

    iget-object v6, p0, Lj00$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lj00$a;->d:Ljava/lang/String;

    sget-object v8, Lh35;->a:Lh35;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lj00;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lh35;Z)V

    return-object v10
.end method
