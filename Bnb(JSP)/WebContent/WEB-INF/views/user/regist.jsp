<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- JavaScript Libraries -->
<jsp:include page="/inc/asset.jsp"></jsp:include>
<!-- HTML 라이브러리 -->
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
   integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
   crossorigin="anonymous">

<style>
.terms-box {
	position: relative;
	overflow: auto;
	height: 88px;
	padding: 12px;
	border: 1px solid #dadada;
	background: #fff;
	margin-bottom: 30px;
}

.article {
	font-size: 16px;
}

.article_title {
	font-size: 17px;
}

li {
	list-style-type: none;
}

.req {
	font-size: 13px;
	color: #56C3B8;
}

.sel {
	font-size: 13px;
	color: #aaa;
}

ul {
	padding: 0px 12px;
}

.far {
	font-size: 24px;
	color: grey;
	transform: translate(0px, 3px);
}

.chk-all {
	display: inline-block;
	width: 30px;
	font-size: 30px;
	float: left;
	margin: 8px 10px;
	color: grey;
}

.form {
	width: 200px;
	height: 50px;
	font-weight: bold;
	margin: 15px;
	border: 0px solid grey;
	outline: none;
	background-color: #bbb;
	cursor: pointer;
}

.ok {
	background-color: #56C3B8;
}

.form-bx {
	border: 0px solid grey;
}

.far ,label {

	cursor: pointer;
}

.ok:disabled {
	opacity: .7;
}


</style>

</head>

<jsp:include page="/inc/asset4.jsp"></jsp:include>

<body oncontextmenu='return false' ondragstart='return false' onselectstart='return false'>
	<div style="background-color: white;">
		<div style="width: 250px; height: 120px; overflow: hidden; margin: 0px auto; border: 0px solid black;">
		<a href="/bnb/main.do"><img src="/bnb/img/logo.png" style="display: block; width: 250px; height: 120px;"></a>
		</div>
	</div>
		<div id="container" style="width: 470px; margin: 50px auto;">
			<div id="content">
				<div style="font-size: 18px;">
					<!-- 약관동의 -->
					<div class="chk-all-form">
						<i class="far fa-check-circle chk-all" id="chkall"></i> <label
							for="chkall"> 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), <br>프로모션
							안내 메일 수신(선택)에 모두 동의합니다.
						</label>
					</div>
					<div
						style="border: 0px solid black; width: 470px; margin-top: 10px;">
						<ul>
							<li>
								<div class="chk-form1 chkform"
									style="width: 350px; display: inline-block;">
									<i class="far fa-check-circle check chk1 lock"></i> 
									<label for="chk1"> <span
										style="font-size: 18px; display: inline-block;">S2BNB
											이용약관 동의<span class="req">(필수)</span>
									</span>
									</label>
								</div>
								<div class="terms-box">
									<div class="article">
										<p class="article__title">여러분을 환영합니다.</p>
										<p class="article__text">S2BNB 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서
											감사합니다. 본 약관은 다양한 S2BNB 서비스의 이용과 관련하여 S2BNB 서비스를 제공하는 S2BNB
											주식회사(이하 ‘S2BNB’)와 이를 이용하는 S2BNB 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를
											설명하며, 아울러 여러분의 S2BNB 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</p>
										<p class="article__text">S2BNB 서비스를 이용하시거나 S2BNB 서비스 회원으로
											가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의
											깊게 살펴봐 주시기 바랍니다.</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Officia eaque quos. Fugiat est id impedit
												nesciunt enim amet sunt officia qui ducimus eveniet quaerat
												aspernatur accusamus optio inventore laudantium reiciendis.</span>
											<span>Rem quisquam perspiciatis quam facere excepturi
												cumque doloribus aut in porro numquam est fugit. Rem labore
												quos quisquam id minima cumque dolorum nisi odio neque
												architecto recusandae fuga natus voluptates!</span> <span>Id
												totam dicta deserunt tenetur voluptate reiciendis voluptates
												rerum in labore praesentium ab tempore iure ipsa. Voluptate
												dolor cumque similique asperiores sint provident laudantium
												culpa ipsam esse dignissimos quas ratione.</span> <span>Illum
												aliquid labore totam neque esse earum a perferendis aperiam
												tempore repudiandae quibusdam ipsa? Quod sint nostrum
												molestiae cupiditate eligendi deserunt laboriosam quae
												labore corrupti ipsum eveniet nesciunt ipsa quos.</span> <span>Esse
												consequuntur vitae delectus ratione doloribus reiciendis
												possimus non id harum necessitatibus numquam expedita alias
												illum iste animi sequi suscipit impedit quisquam fugit quis
												voluptate. Voluptate non nemo consequuntur velit.</span> <span>Doloribus
												voluptates doloremque nulla odit aspernatur laudantium amet
												iusto nisi laboriosam id obcaecati architecto modi pariatur
												nesciunt asperiores. Necessitatibus sunt dicta aliquam
												voluptates. Explicabo reprehenderit provident nobis veniam
												autem similique!</span> <span>Totam quisquam architecto
												porro cumque quo nisi saepe minima non minus sit quaerat ut
												iure corporis blanditiis quibusdam error enim velit
												provident. Corporis fugit necessitatibus sint veniam tenetur
												iure vel!</span> <span>Qui perferendis culpa consequuntur
												delectus illo accusantium nemo alias ipsa nisi neque.
												Corporis voluptatibus amet tempore incidunt recusandae
												dolores maiores iure quibusdam consequuntur aliquam. Earum
												vero corporis non voluptas quos?</span> <span>Fuga est
												tenetur molestiae repellendus deserunt nostrum distinctio
												sapiente explicabo aliquid officia laudantium corporis sit
												quam iure aliquam reprehenderit eaque cum maiores reiciendis
												error consequatur quas placeat! Necessitatibus culpa libero!</span>
											<span>Quasi ad debitis distinctio a molestiae
												provident minima necessitatibus qui nulla aliquid at tenetur
												animi inventore beatae veniam laborum dolorem enim ducimus
												quae quas delectus sequi fugit aliquam quod incidunt.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Distinctio corrupti hic a obcaecati quasi
												consectetur et modi explicabo incidunt placeat ut nisi
												possimus voluptatum repellendus inventore qui fugit aut
												ducimus.</span> <span>Doloribus mollitia illum libero nihil
												cupiditate harum necessitatibus tenetur minima ducimus sed
												natus quaerat laborum enim soluta vitae cumque repellendus
												in saepe magnam molestias iusto incidunt magni recusandae.
												Sit amet.</span> <span>Nemo officia nam dicta minus quam
												necessitatibus libero repellat inventore rerum eaque sequi
												dolorum temporibus dignissimos laboriosam debitis sit
												provident quibusdam fugit unde sint. Fugiat temporibus unde
												doloremque deleniti quaerat.</span> <span>Modi corporis nam
												asperiores voluptates recusandae molestiae vel quaerat
												quibusdam id ipsum ea fuga eos libero minus cumque dolorem
												tenetur! Repellendus dolorum nam iure itaque consequatur
												reiciendis voluptates aut doloremque!</span> <span>Velit
												earum facere adipisci odio dicta quo laudantium voluptates
												numquam accusamus ut. Rem eos animi numquam saepe ipsum sit
												veniam nisi eum accusamus laudantium esse illo quae
												repudiandae corporis quo.</span> <span>Inventore et
												repudiandae a tenetur sit quos sed ab distinctio dolor
												debitis eligendi beatae repellendus soluta quia magni autem
												dolores rem eaque! Alias omnis voluptatem beatae
												consequuntur eveniet corporis voluptas.</span> <span>Beatae
												fugiat nihil quaerat voluptatum illum maxime reiciendis
												repudiandae neque provident facere ea harum. Accusantium
												repellendus dolorem voluptatem nobis voluptatum fugit
												molestiae unde velit autem sapiente aliquid aut maxime
												cupiditate.</span> <span>Voluptatibus provident eligendi
												suscipit quam maiores molestiae at officiis consequuntur
												vitae libero quod vero quae quaerat beatae velit magnam
												similique. Doloribus dolorem consequatur explicabo fugiat!
												Sit sed eligendi possimus animi.</span> <span>Officia neque
												unde tempora minus sequi accusantium obcaecati ipsa vitae
												libero iste quaerat excepturi sed cumque soluta impedit
												natus est iure omnis odio voluptas veritatis cupiditate
												facere maxime voluptatibus nobis.</span> <span>Incidunt
												veritatis dolore explicabo dolor quis voluptates eaque
												officia maiores quae ex cumque blanditiis nostrum sapiente
												nam maxime quos modi. Doloremque quos totam quibusdam
												consequuntur enim asperiores necessitatibus quisquam illo!</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Iusto enim omnis sapiente eligendi
												impedit. Sed iure quae quo provident deleniti nulla
												molestias beatae consequatur enim odit nam amet corporis ea.</span>
											<span>Soluta ea nesciunt minus veritatis ad aliquam
												accusamus provident ratione doloribus blanditiis ullam
												quisquam eius fuga dolore perferendis quia magnam temporibus
												qui perspiciatis mollitia aperiam laboriosam sit incidunt.
												Architecto voluptate.</span> <span>Commodi dicta porro non
												quasi accusamus voluptas eius ut provident molestiae
												deleniti velit sapiente aut deserunt dolor maiores facere
												ipsum eligendi nihil itaque voluptatem. Provident qui
												dolorem impedit est obcaecati?</span> <span>Omnis optio
												distinctio blanditiis assumenda aliquid architecto nulla
												asperiores rem voluptate facilis nemo consectetur soluta
												nostrum debitis fugit veniam explicabo exercitationem
												laborum hic repellat neque consequuntur consequatur tempore
												eum molestias.</span> <span>Voluptas dicta eligendi rerum
												nesciunt esse pariatur maxime. Itaque veniam obcaecati rem
												odio atque maxime vero consequatur eos voluptas praesentium
												inventore unde enim explicabo laudantium consectetur
												veritatis assumenda expedita quasi!</span> <span>Ullam odit
												amet atque tenetur nam accusamus nulla repudiandae ipsa
												molestiae non facilis cupiditate quo consectetur iste dolore
												perspiciatis sequi aliquid! Cumque possimus ut ab
												consectetur necessitatibus maiores consequatur delectus.</span> <span>Quis
												illo perferendis aliquid autem enim incidunt quisquam
												tenetur quidem. Maxime minus laudantium id culpa?
												Reprehenderit quis harum ipsa aut doloremque a debitis illo
												sunt quibusdam similique vero accusamus totam.</span> <span>Porro
												error libero cumque laboriosam recusandae odio minima quam
												expedita inventore dolorum beatae voluptatibus ab delectus
												ex nobis molestias architecto itaque nulla obcaecati officia
												magni provident sunt soluta illum ullam.</span> <span>Culpa
												voluptates minus nulla ratione sapiente deserunt a officiis
												qui laudantium quidem vero dolor! Libero qui nemo natus
												debitis sunt consectetur placeat obcaecati alias consequatur
												incidunt dolor quos quo maxime?</span> <span>Soluta dolore
												mollitia aperiam ratione quidem! Eum quo voluptate beatae
												tempore delectus vitae autem eveniet consequatur. Vero sequi
												optio expedita eligendi accusantium commodi architecto
												deserunt voluptate minus beatae dicta necessitatibus.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Labore ratione explicabo voluptates facere
												dolor reiciendis quae dolore totam eos omnis ipsam fuga
												obcaecati rem veniam harum est deserunt optio maxime?</span> <span>Error
												debitis rerum blanditiis voluptatibus officia voluptas
												consequuntur nihil ipsa inventore est natus voluptatem
												mollitia quaerat quasi veritatis. Aspernatur reiciendis nam
												ea dolores nostrum quaerat quibusdam vero voluptatibus sit
												natus!</span> <span>Quibusdam earum hic perferendis tempora
												facilis voluptatum qui veritatis eum temporibus nemo
												reprehenderit ipsum omnis aliquam molestiae recusandae
												quidem ipsa blanditiis excepturi. Nulla sunt laudantium
												recusandae libero soluta obcaecati asperiores.</span> <span>Consequuntur
												repellendus similique odit dignissimos id iure fuga
												temporibus eveniet ex exercitationem doloremque esse magnam
												illo aut ipsum vero est ducimus deleniti non nulla ipsa
												voluptate totam voluptas unde placeat.</span> <span>Magni
												delectus minima ad voluptatibus assumenda nam accusantium
												fugiat sit corrupti eaque beatae dignissimos mollitia neque
												cumque obcaecati reiciendis illo consequatur. Assumenda
												earum nemo dolor possimus ex facere sequi. Consequatur.</span> <span>Similique
												aperiam atque mollitia cupiditate beatae aut iste placeat
												quasi saepe iusto ab nisi temporibus fugiat ut sint vel
												minima porro accusamus voluptate nulla? Quaerat doloribus
												autem illum veniam repudiandae?</span> <span>Consequatur
												reprehenderit optio consequuntur vitae dolore asperiores et
												possimus repellendus obcaecati quaerat cupiditate
												repudiandae beatae odio quia quod nam deleniti. Ipsam
												excepturi totam molestiae iure officiis hic obcaecati
												beatae. Id?</span> <span>Amet possimus iste obcaecati
												molestiae fuga magnam necessitatibus odit nemo vero quisquam
												recusandae voluptas quis nostrum nisi veritatis ad quibusdam
												eveniet. Fugiat saepe non cum quisquam est maiores aliquam
												in.</span> <span>Aperiam nulla repellendus vitae doloremque
												illum. Totam facilis placeat atque iusto impedit temporibus
												perferendis rem quia ea in ad dignissimos optio delectus
												reprehenderit repellat aliquam ipsam. Non incidunt odio
												beatae.</span> <span>Laborum quaerat nesciunt tempore sunt
												adipisci molestiae asperiores in porro blanditiis quis vero
												ex excepturi nihil. Aut cum molestiae aliquid! Incidunt
												molestias ad repudiandae quae expedita hic cum praesentium
												harum?</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Sit itaque aliquam vel cupiditate totam
												deserunt libero at minima exercitationem dignissimos quidem
												assumenda tempore doloremque. Assumenda veniam temporibus
												repudiandae possimus aut.</span> <span>Rerum nobis adipisci
												ullam vitae modi ipsa esse similique ipsam quo. Minus sed
												maiores officiis doloribus quisquam ullam numquam illo.
												Tempore animi maxime voluptate eveniet adipisci doloribus
												dicta consectetur laborum!</span> <span>Aperiam natus alias
												rerum quo sunt est temporibus voluptatibus voluptatum
												adipisci commodi ad soluta consequuntur perspiciatis
												asperiores dicta illum ducimus cupiditate atque ipsa
												suscipit ea accusantium non exercitationem fugiat id.</span> <span>Earum
												praesentium ad ut amet laborum corporis repellat fugit
												aliquam laudantium doloribus! Voluptate quisquam illo hic
												impedit aperiam sapiente ab labore esse ducimus est
												distinctio deserunt libero a molestias explicabo.</span> <span>Dolorum
												praesentium atque neque iure inventore consequuntur. Neque
												animi praesentium fuga quaerat porro nam aliquid officiis!
												Non amet minus culpa consequuntur odit vero magnam totam
												quaerat rerum accusantium ipsam esse.</span> <span>Facere ab
												deserunt architecto sapiente facilis natus assumenda
												asperiores alias rem molestias reiciendis earum animi
												obcaecati iure iste. Consequuntur asperiores nemo officiis
												facilis laudantium mollitia nihil repellendus natus iusto
												accusamus.</span> <span>Omnis ab tempora explicabo
												voluptatibus. Incidunt animi distinctio accusantium itaque
												sapiente possimus dicta inventore dolore adipisci eaque ab
												porro ea velit dolor autem fuga ratione similique placeat
												excepturi blanditiis cumque.</span> <span>Cupiditate eaque
												hic dicta impedit asperiores distinctio harum consequuntur
												autem praesentium incidunt dolor mollitia aspernatur ipsum
												enim unde similique necessitatibus reprehenderit! Optio
												ullam nesciunt et porro enim nam illo fugit!</span> <span>Ratione
												dolorem atque fuga veritatis rerum ipsa reiciendis
												repellendus sunt necessitatibus totam explicabo aliquam quod
												veniam ut accusantium repudiandae similique obcaecati. Quas
												obcaecati omnis nam officia expedita doloremque magni
												blanditiis.</span> <span>Dolorum eius adipisci distinctio at
												impedit rerum incidunt quia dignissimos quae iure! Fugiat
												cupiditate qui commodi distinctio officia quisquam corrupti
												aperiam ad veritatis sit in sapiente incidunt ipsa sint
												magnam!</span>
										</p>
									</div>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<!-- 개인정보 수집 및 이용에 대한 안내 --> <span class="chk-form2 chkform"> <i
									class="far fa-check-circle check chk2 lock"></i> <label
									for="chk1">개인정보 수집 및 이용에 대한 문의<span class="req">(필수)</span>
								</label>
							</span>
								<div class="terms-box">
									<div class="article">
										<p class="article__title">정보통신망법 규정에 따라 S2BNB에 회원가입 신청하시는
											분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니
											자세히 읽은 후 동의하여 주시기 바랍니다.</p>
										<p class="article__text">
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Eaque ipsa perspiciatis cupiditate ipsam
												expedita in delectus debitis repellat deleniti quod labore
												soluta iusto neque sunt a doloribus voluptatum velit nihil!</span>
											<span>Alias facere deleniti dolorem repudiandae iusto
												voluptatibus. Molestias quae recusandae aspernatur facilis
												voluptate pariatur consectetur veniam ipsa quisquam fugit?
												Placeat commodi impedit obcaecati iure cumque neque
												accusantium dolor est itaque.</span> <span>Beatae ullam amet
												placeat harum aliquam non delectus maiores eveniet nihil
												laudantium cum labore dolorum quod eligendi quam. Nam quod
												accusamus non quo quibusdam dolorem accusantium quas quasi
												porro illum.</span> <span>Unde amet eaque molestias iusto
												fugiat est assumenda vel illum corporis facilis. Iste libero
												inventore enim adipisci magnam tempore odit ratione a
												veritatis quisquam illum odio nisi quam architecto eligendi!</span>
											<span>Minus magnam dolores a incidunt eaque itaque
												sapiente fugiat odit ea aut velit beatae saepe illum vero ex
												quos nobis eos quasi rerum quidem ullam excepturi officia
												deserunt totam ipsam.</span> <span>Recusandae quod dolores
												error ipsam veritatis saepe aspernatur ex voluptatibus
												laboriosam nostrum corporis modi accusamus illum dolor ut
												omnis commodi qui magnam suscipit reiciendis consectetur
												delectus nemo consequatur magni voluptates?</span> <span>Repellendus
												porro nostrum natus accusantium aperiam dolor quas doloribus
												voluptatum at vitae ipsa harum eos in delectus enim
												voluptatem repellat autem reprehenderit pariatur ab eaque
												veniam soluta temporibus. Ea quos.</span> <span>Deleniti
												odit impedit beatae sapiente dicta vel rerum numquam autem
												quae magnam illo doloremque nam commodi atque quia iste ea
												pariatur facilis ipsum ullam placeat dolorum eos qui quaerat
												fuga.</span> <span>Hic repudiandae eaque aliquam obcaecati
												provident cupiditate culpa maiores suscipit autem illum
												necessitatibus delectus et qui nobis quaerat amet expedita
												accusamus veritatis laboriosam numquam ad excepturi fugiat
												voluptate voluptatibus fugit!</span> <span>Blanditiis illo
												doloremque repudiandae odit in debitis quaerat fugit
												mollitia velit ab eaque incidunt nihil quisquam quas magni a
												nam illum numquam repellat voluptates dolorem explicabo enim
												cumque culpa sequi?</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Maiores nisi obcaecati incidunt
												repudiandae consequuntur exercitationem eos deserunt nobis
												asperiores rerum ab nulla provident voluptates voluptatum
												quod aut facere assumenda accusamus.</span> <span>Aspernatur
												atque recusandae beatae delectus libero omnis! Ullam ex
												asperiores et cupiditate amet ducimus omnis delectus eum
												obcaecati suscipit pariatur vel maiores minima consequatur
												debitis dolorem minus laboriosam illo laudantium!</span> <span>Amet
												obcaecati recusandae odit ut iste expedita fuga dolorum!
												Fuga cupiditate aliquam porro praesentium voluptates
												officiis fugit officia ipsam. Cumque esse reiciendis ex
												obcaecati nesciunt minima. Magni quod reiciendis tempore!</span> <span>Velit
												magni natus corrupti libero illo illum sed ad autem eligendi
												corporis nihil et amet quas nemo at quos excepturi quam
												saepe tempore perferendis quidem tenetur molestiae similique
												odio distinctio.</span> <span>Perspiciatis laboriosam
												corrupti reprehenderit quos eius tempora debitis labore iure
												eaque numquam veritatis error excepturi hic cupiditate
												repellendus porro esse maiores enim delectus possimus
												voluptatem quia a doloribus quidem eum.</span> <span>Incidunt
												reiciendis accusamus perspiciatis aut error neque cum
												nostrum laborum tempore aperiam tenetur alias architecto
												sapiente! Ipsum aperiam quidem necessitatibus nemo aut.
												Debitis voluptatibus vero illo natus incidunt perferendis
												consequatur.</span> <span>Nemo dolore et qui sed officiis
												ducimus perferendis odio labore assumenda suscipit minima
												maxime dignissimos accusantium earum exercitationem repellat
												cumque fugit impedit accusamus magni saepe esse cupiditate
												nisi voluptates aliquam!</span> <span>Quaerat at a deserunt
												recusandae laboriosam obcaecati reiciendis itaque explicabo
												cupiditate quos deleniti laborum nostrum aspernatur odit
												velit est illo! Debitis ex qui odit reprehenderit et quam
												doloremque nemo. Dicta.</span> <span>Nam maxime quae magni
												perferendis dolor iste commodi. Alias sint error incidunt
												laboriosam porro molestiae quod placeat corporis inventore
												nostrum consequuntur nam illo deleniti ut pariatur sit ullam
												eligendi neque.</span> <span>Velit quia sit dolor incidunt
												est nesciunt amet nam aut necessitatibus esse sapiente
												impedit porro optio tempora aliquid reprehenderit quo
												eligendi. Beatae consectetur iure ipsam temporibus eaque
												aliquam eos. Fugit.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Magni aperiam architecto temporibus
												fugiat. Atque error id minus doloribus harum dolorum tenetur
												repellat laborum nostrum voluptatem voluptatum numquam cum
												quis a.</span> <span>Voluptatum nesciunt enim quae ab
												explicabo ad sapiente accusantium est architecto voluptate
												recusandae rem nobis. Et alias nesciunt possimus cum quae
												quod voluptatum ab magnam iure laboriosam tenetur
												perferendis deserunt!</span> <span>At eaque veniam odio
												exercitationem repudiandae nulla dolores voluptas veritatis
												optio fugit dolor et aliquam omnis officiis mollitia ipsa
												quibusdam ullam. Dolorem dignissimos nisi in reiciendis
												accusantium! Alias perspiciatis consequatur.</span> <span>Placeat
												deserunt iure eos odit quis rerum nam laboriosam eius
												asperiores reiciendis officia cumque id ratione totam vitae
												ex mollitia ab assumenda laborum libero quisquam accusantium
												repellat voluptatum ipsam veritatis!</span> <span>Incidunt
												modi ea id in sed culpa velit neque at alias voluptas
												ratione maxime illum aliquam a aperiam molestiae officiis.
												Itaque placeat animi ab accusamus rerum enim ad obcaecati
												similique.</span> <span>Illum laboriosam cum assumenda
												deserunt aliquid perferendis doloremque maxime consequuntur
												possimus odit sequi recusandae error iusto vitae consequatur
												nesciunt iste sint quas ducimus ullam itaque quasi sit
												architecto cupiditate perspiciatis!</span> <span>Aliquam in
												perspiciatis quisquam iste porro iusto veritatis facilis
												quae dignissimos atque libero provident voluptatem
												laboriosam cupiditate debitis quidem nulla ipsam sed eveniet
												incidunt. Eius repellendus repudiandae numquam est
												doloribus.</span> <span>Cum at placeat voluptatibus ducimus
												quibusdam repellat iste facilis eum quidem non voluptatum
												modi animi iusto qui culpa eligendi rerum labore nobis unde
												quis temporibus sint suscipit explicabo debitis numquam.</span> <span>Debitis
												praesentium aliquid qui commodi consectetur tempore nulla
												nam velit quisquam nisi illo sed ratione ipsa magnam
												voluptate aut ab mollitia! Reprehenderit dolorem corporis
												fugiat nisi iusto nulla ipsum unde.</span> <span>Ipsam saepe
												cupiditate nostrum perferendis neque voluptatum commodi
												magnam mollitia aperiam facere illum velit inventore unde.
												Pariatur nulla saepe culpa dignissimos quidem fugiat iste
												quisquam ipsa nemo deserunt quas aut.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Quisquam reiciendis explicabo architecto
												eum rem corporis facilis hic aut? Ullam facilis voluptatum
												soluta assumenda reprehenderit illum voluptates corporis
												nostrum iure quae!</span> <span>Sit eum asperiores
												repudiandae maxime illum praesentium quisquam tempora ut
												optio distinctio itaque eveniet sed ex minima tempore quis
												facilis architecto repellendus ipsam velit ullam ad modi
												deleniti consequatur voluptatibus.</span> <span>Dolorum eius
												quod numquam cumque animi iste optio molestias quas
												temporibus at vero vitae rerum consectetur totam quasi!
												Culpa sit perferendis ex est quaerat nulla odit quisquam
												mollitia hic non!</span> <span>Minus voluptate modi
												inventore quis beatae distinctio perspiciatis ab facere
												explicabo sed provident consequatur quae nam deleniti porro
												dignissimos aut officiis nobis atque natus debitis eos
												accusamus laborum eius magni!</span> <span>Nulla minima in
												maiores consequuntur totam dolorum sed laudantium reiciendis
												rerum aliquam ad veritatis aut adipisci? Praesentium quidem
												doloremque maiores laboriosam nemo ullam deserunt
												consequatur iusto autem quas hic maxime?</span> <span>Unde
												ea officiis ex atque sed dolore porro deleniti hic accusamus
												dolorum maxime excepturi tempore repudiandae eos veritatis
												repellat nam ad nobis minus quas temporibus libero explicabo
												nulla. Magni numquam.</span> <span>Molestias expedita maxime
												animi debitis suscipit! Inventore unde corrupti eius hic
												delectus ipsa tempora est. Eligendi consequuntur corrupti
												earum ullam sapiente mollitia facere. Id doloribus
												temporibus accusantium reprehenderit dolores eaque?</span> <span>Eligendi
												at minus mollitia ad voluptate dignissimos libero alias.
												Ipsam facere voluptatibus quos odit sunt eum dolor beatae
												iusto perferendis ratione quisquam quae dolorum debitis ab
												rerum voluptatum libero error?</span> <span>Dolor odio
												architecto molestias eum soluta explicabo quia blanditiis
												vitae corporis aliquam veniam minus cumque deleniti! Ipsam
												hic deserunt voluptates dolores repudiandae ut quisquam
												harum velit voluptate magnam deleniti culpa.</span> <span>Similique
												ratione optio possimus consequatur a maiores porro alias
												rerum incidunt unde numquam deleniti dolorem modi inventore
												autem enim reprehenderit consectetur odit debitis temporibus
												iusto molestias corrupti sed laborum pariatur!</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Ut animi error voluptates nulla nostrum
												distinctio dolorem nisi natus repellat labore. Dolor vitae
												veritatis tenetur ex sequi nisi animi eos repudiandae.</span> <span>A
												quo aspernatur voluptatem repellat atque fugit delectus enim
												qui sed laboriosam excepturi consectetur expedita aliquid
												voluptatibus ullam voluptates minima tenetur. Accusamus
												explicabo nesciunt repellendus dicta officiis cumque quo
												eligendi.</span> <span>Saepe laboriosam corrupti iure est
												eius non culpa magnam rem. Omnis debitis eius quos impedit
												aspernatur deserunt adipisci non tempora vel numquam! Ut
												explicabo repudiandae dolores laudantium labore quod nulla.</span>
											<span>Molestiae quia nostrum unde numquam repudiandae
												quos veniam eligendi possimus enim laudantium eius dolore
												quae. Assumenda magnam unde tenetur repellendus iusto ad
												doloremque qui maxime natus error incidunt alias sequi.</span> <span>Libero
												debitis cupiditate dicta cumque rem officiis ipsam unde
												dolore soluta nesciunt quam optio esse iure qui minima
												repellat sapiente est exercitationem iusto suscipit
												recusandae illum odit omnis corrupti quaerat!</span> <span>Quae
												ex nostrum atque in totam officiis quidem aliquid omnis
												eveniet dolore distinctio at incidunt voluptate sed nisi
												soluta libero id numquam culpa nam. Non mollitia distinctio
												vel hic iure.</span> <span>Vitae sapiente quos alias
												consequuntur optio eum doloremque assumenda rem id in a
												dolorem quod veritatis non blanditiis facere omnis sequi
												ipsa quo atque. Minima illum veritatis reiciendis ipsam
												itaque?</span> <span>Aperiam rem laborum fugit hic ad
												accusantium deserunt quibusdam dolores aspernatur nihil
												laboriosam cum repellendus. Neque praesentium distinctio
												consectetur impedit atque quos nisi id cupiditate quibusdam
												soluta ipsa earum inventore.</span> <span>Excepturi dolore
												similique ad eius quos natus rerum. Quasi consequuntur rerum
												neque totam reprehenderit dicta animi vero. Doloremque
												dolores praesentium error illum sint sunt voluptate ipsam
												eos voluptatum impedit necessitatibus.</span> <span>Nam
												ullam error fugit temporibus. Consectetur amet laudantium
												facere dolor est perferendis earum sed ipsum alias eveniet
												eos saepe qui quaerat at suscipit doloremque placeat!
												Ducimus sed labore iste autem.</span>
										</p>
									</div>
								</div>
							</li>
						</ul>
						<ul>
							<li>
								<!-- 위치정보 이용약간 동의 --> <span class="chk-form3 chkform"> <i
									class="far fa-check-circle check chk3 "></i> <label
									for="chk1"> <span
										style="font-size: 18px; display: inline-block;">개인정보 수집
											및 이용에 대한 문의<span class="sel">(선택)</span>
									</span>
								</label>
							</span>
								<div class="terms-box">
									<div class="article">
										<p class="article__title">위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보
											수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.</p>
										<p class="article__text">
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Eaque ipsa perspiciatis cupiditate ipsam
												expedita in delectus debitis repellat deleniti quod labore
												soluta iusto neque sunt a doloribus voluptatum velit nihil!</span>
											<span>Alias facere deleniti dolorem repudiandae iusto
												voluptatibus. Molestias quae recusandae aspernatur facilis
												voluptate pariatur consectetur veniam ipsa quisquam fugit?
												Placeat commodi impedit obcaecati iure cumque neque
												accusantium dolor est itaque.</span> <span>Beatae ullam amet
												placeat harum aliquam non delectus maiores eveniet nihil
												laudantium cum labore dolorum quod eligendi quam. Nam quod
												accusamus non quo quibusdam dolorem accusantium quas quasi
												porro illum.</span> <span>Unde amet eaque molestias iusto
												fugiat est assumenda vel illum corporis facilis. Iste libero
												inventore enim adipisci magnam tempore odit ratione a
												veritatis quisquam illum odio nisi quam architecto eligendi!</span>
											<span>Minus magnam dolores a incidunt eaque itaque
												sapiente fugiat odit ea aut velit beatae saepe illum vero ex
												quos nobis eos quasi rerum quidem ullam excepturi officia
												deserunt totam ipsam.</span> <span>Recusandae quod dolores
												error ipsam veritatis saepe aspernatur ex voluptatibus
												laboriosam nostrum corporis modi accusamus illum dolor ut
												omnis commodi qui magnam suscipit reiciendis consectetur
												delectus nemo consequatur magni voluptates?</span> <span>Repellendus
												porro nostrum natus accusantium aperiam dolor quas doloribus
												voluptatum at vitae ipsa harum eos in delectus enim
												voluptatem repellat autem reprehenderit pariatur ab eaque
												veniam soluta temporibus. Ea quos.</span> <span>Deleniti
												odit impedit beatae sapiente dicta vel rerum numquam autem
												quae magnam illo doloremque nam commodi atque quia iste ea
												pariatur facilis ipsum ullam placeat dolorum eos qui quaerat
												fuga.</span> <span>Hic repudiandae eaque aliquam obcaecati
												provident cupiditate culpa maiores suscipit autem illum
												necessitatibus delectus et qui nobis quaerat amet expedita
												accusamus veritatis laboriosam numquam ad excepturi fugiat
												voluptate voluptatibus fugit!</span> <span>Blanditiis illo
												doloremque repudiandae odit in debitis quaerat fugit
												mollitia velit ab eaque incidunt nihil quisquam quas magni a
												nam illum numquam repellat voluptates dolorem explicabo enim
												cumque culpa sequi?</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Maiores nisi obcaecati incidunt
												repudiandae consequuntur exercitationem eos deserunt nobis
												asperiores rerum ab nulla provident voluptates voluptatum
												quod aut facere assumenda accusamus.</span> <span>Aspernatur
												atque recusandae beatae delectus libero omnis! Ullam ex
												asperiores et cupiditate amet ducimus omnis delectus eum
												obcaecati suscipit pariatur vel maiores minima consequatur
												debitis dolorem minus laboriosam illo laudantium!</span> <span>Amet
												obcaecati recusandae odit ut iste expedita fuga dolorum!
												Fuga cupiditate aliquam porro praesentium voluptates
												officiis fugit officia ipsam. Cumque esse reiciendis ex
												obcaecati nesciunt minima. Magni quod reiciendis tempore!</span> <span>Velit
												magni natus corrupti libero illo illum sed ad autem eligendi
												corporis nihil et amet quas nemo at quos excepturi quam
												saepe tempore perferendis quidem tenetur molestiae similique
												odio distinctio.</span> <span>Perspiciatis laboriosam
												corrupti reprehenderit quos eius tempora debitis labore iure
												eaque numquam veritatis error excepturi hic cupiditate
												repellendus porro esse maiores enim delectus possimus
												voluptatem quia a doloribus quidem eum.</span> <span>Incidunt
												reiciendis accusamus perspiciatis aut error neque cum
												nostrum laborum tempore aperiam tenetur alias architecto
												sapiente! Ipsum aperiam quidem necessitatibus nemo aut.
												Debitis voluptatibus vero illo natus incidunt perferendis
												consequatur.</span> <span>Nemo dolore et qui sed officiis
												ducimus perferendis odio labore assumenda suscipit minima
												maxime dignissimos accusantium earum exercitationem repellat
												cumque fugit impedit accusamus magni saepe esse cupiditate
												nisi voluptates aliquam!</span> <span>Quaerat at a deserunt
												recusandae laboriosam obcaecati reiciendis itaque explicabo
												cupiditate quos deleniti laborum nostrum aspernatur odit
												velit est illo! Debitis ex qui odit reprehenderit et quam
												doloremque nemo. Dicta.</span> <span>Nam maxime quae magni
												perferendis dolor iste commodi. Alias sint error incidunt
												laboriosam porro molestiae quod placeat corporis inventore
												nostrum consequuntur nam illo deleniti ut pariatur sit ullam
												eligendi neque.</span> <span>Velit quia sit dolor incidunt
												est nesciunt amet nam aut necessitatibus esse sapiente
												impedit porro optio tempora aliquid reprehenderit quo
												eligendi. Beatae consectetur iure ipsam temporibus eaque
												aliquam eos. Fugit.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Magni aperiam architecto temporibus
												fugiat. Atque error id minus doloribus harum dolorum tenetur
												repellat laborum nostrum voluptatem voluptatum numquam cum
												quis a.</span> <span>Voluptatum nesciunt enim quae ab
												explicabo ad sapiente accusantium est architecto voluptate
												recusandae rem nobis. Et alias nesciunt possimus cum quae
												quod voluptatum ab magnam iure laboriosam tenetur
												perferendis deserunt!</span> <span>At eaque veniam odio
												exercitationem repudiandae nulla dolores voluptas veritatis
												optio fugit dolor et aliquam omnis officiis mollitia ipsa
												quibusdam ullam. Dolorem dignissimos nisi in reiciendis
												accusantium! Alias perspiciatis consequatur.</span> <span>Placeat
												deserunt iure eos odit quis rerum nam laboriosam eius
												asperiores reiciendis officia cumque id ratione totam vitae
												ex mollitia ab assumenda laborum libero quisquam accusantium
												repellat voluptatum ipsam veritatis!</span> <span>Incidunt
												modi ea id in sed culpa velit neque at alias voluptas
												ratione maxime illum aliquam a aperiam molestiae officiis.
												Itaque placeat animi ab accusamus rerum enim ad obcaecati
												similique.</span> <span>Illum laboriosam cum assumenda
												deserunt aliquid perferendis doloremque maxime consequuntur
												possimus odit sequi recusandae error iusto vitae consequatur
												nesciunt iste sint quas ducimus ullam itaque quasi sit
												architecto cupiditate perspiciatis!</span> <span>Aliquam in
												perspiciatis quisquam iste porro iusto veritatis facilis
												quae dignissimos atque libero provident voluptatem
												laboriosam cupiditate debitis quidem nulla ipsam sed eveniet
												incidunt. Eius repellendus repudiandae numquam est
												doloribus.</span> <span>Cum at placeat voluptatibus ducimus
												quibusdam repellat iste facilis eum quidem non voluptatum
												modi animi iusto qui culpa eligendi rerum labore nobis unde
												quis temporibus sint suscipit explicabo debitis numquam.</span> <span>Debitis
												praesentium aliquid qui commodi consectetur tempore nulla
												nam velit quisquam nisi illo sed ratione ipsa magnam
												voluptate aut ab mollitia! Reprehenderit dolorem corporis
												fugiat nisi iusto nulla ipsum unde.</span> <span>Ipsam saepe
												cupiditate nostrum perferendis neque voluptatum commodi
												magnam mollitia aperiam facere illum velit inventore unde.
												Pariatur nulla saepe culpa dignissimos quidem fugiat iste
												quisquam ipsa nemo deserunt quas aut.</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Quisquam reiciendis explicabo architecto
												eum rem corporis facilis hic aut? Ullam facilis voluptatum
												soluta assumenda reprehenderit illum voluptates corporis
												nostrum iure quae!</span> <span>Sit eum asperiores
												repudiandae maxime illum praesentium quisquam tempora ut
												optio distinctio itaque eveniet sed ex minima tempore quis
												facilis architecto repellendus ipsam velit ullam ad modi
												deleniti consequatur voluptatibus.</span> <span>Dolorum eius
												quod numquam cumque animi iste optio molestias quas
												temporibus at vero vitae rerum consectetur totam quasi!
												Culpa sit perferendis ex est quaerat nulla odit quisquam
												mollitia hic non!</span> <span>Minus voluptate modi
												inventore quis beatae distinctio perspiciatis ab facere
												explicabo sed provident consequatur quae nam deleniti porro
												dignissimos aut officiis nobis atque natus debitis eos
												accusamus laborum eius magni!</span> <span>Nulla minima in
												maiores consequuntur totam dolorum sed laudantium reiciendis
												rerum aliquam ad veritatis aut adipisci? Praesentium quidem
												doloremque maiores laboriosam nemo ullam deserunt
												consequatur iusto autem quas hic maxime?</span> <span>Unde
												ea officiis ex atque sed dolore porro deleniti hic accusamus
												dolorum maxime excepturi tempore repudiandae eos veritatis
												repellat nam ad nobis minus quas temporibus libero explicabo
												nulla. Magni numquam.</span> <span>Molestias expedita maxime
												animi debitis suscipit! Inventore unde corrupti eius hic
												delectus ipsa tempora est. Eligendi consequuntur corrupti
												earum ullam sapiente mollitia facere. Id doloribus
												temporibus accusantium reprehenderit dolores eaque?</span> <span>Eligendi
												at minus mollitia ad voluptate dignissimos libero alias.
												Ipsam facere voluptatibus quos odit sunt eum dolor beatae
												iusto perferendis ratione quisquam quae dolorum debitis ab
												rerum voluptatum libero error?</span> <span>Dolor odio
												architecto molestias eum soluta explicabo quia blanditiis
												vitae corporis aliquam veniam minus cumque deleniti! Ipsam
												hic deserunt voluptates dolores repudiandae ut quisquam
												harum velit voluptate magnam deleniti culpa.</span> <span>Similique
												ratione optio possimus consequatur a maiores porro alias
												rerum incidunt unde numquam deleniti dolorem modi inventore
												autem enim reprehenderit consectetur odit debitis temporibus
												iusto molestias corrupti sed laborum pariatur!</span>
										</p>
										<p>
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit. Ut animi error voluptates nulla nostrum
												distinctio dolorem nisi natus repellat labore. Dolor vitae
												veritatis tenetur ex sequi nisi animi eos repudiandae.</span> <span>A
												quo aspernatur voluptatem repellat atque fugit delectus enim
												qui sed laboriosam excepturi consectetur expedita aliquid
												voluptatibus ullam voluptates minima tenetur. Accusamus
												explicabo nesciunt repellendus dicta officiis cumque quo
												eligendi.</span> <span>Saepe laboriosam corrupti iure est
												eius non culpa magnam rem. Omnis debitis eius quos impedit
												aspernatur deserunt adipisci non tempora vel numquam! Ut
												explicabo repudiandae dolores laudantium labore quod nulla.</span>
											<span>Molestiae quia nostrum unde numquam repudiandae
												quos veniam eligendi possimus enim laudantium eius dolore
												quae. Assumenda magnam unde tenetur repellendus iusto ad
												doloremque qui maxime natus error incidunt alias sequi.</span> <span>Libero
												debitis cupiditate dicta cumque rem officiis ipsam unde
												dolore soluta nesciunt quam optio esse iure qui minima
												repellat sapiente est exercitationem iusto suscipit
												recusandae illum odit omnis corrupti quaerat!</span> <span>Quae
												ex nostrum atque in totam officiis quidem aliquid omnis
												eveniet dolore distinctio at incidunt voluptate sed nisi
												soluta libero id numquam culpa nam. Non mollitia distinctio
												vel hic iure.</span> <span>Vitae sapiente quos alias
												consequuntur optio eum doloremque assumenda rem id in a
												dolorem quod veritatis non blanditiis facere omnis sequi
												ipsa quo atque. Minima illum veritatis reiciendis ipsam
												itaque?</span> <span>Aperiam rem laborum fugit hic ad
												accusantium deserunt quibusdam dolores aspernatur nihil
												laboriosam cum repellendus. Neque praesentium distinctio
												consectetur impedit atque quos nisi id cupiditate quibusdam
												soluta ipsa earum inventore.</span> <span>Excepturi dolore
												similique ad eius quos natus rerum. Quasi consequuntur rerum
												neque totam reprehenderit dicta animi vero. Doloremque
												dolores praesentium error illum sint sunt voluptate ipsam
												eos voluptatum impedit necessitatibus.</span> <span>Nam
												ullam error fugit temporibus. Consectetur amet laudantium
												facere dolor est perferendis earum sed ipsum alias eveniet
												eos saepe qui quaerat at suscipit doloremque placeat!
												Ducimus sed labore iste autem.</span>
										</p>
									</div>
								</div>
							</li>
						</ul>
						<!-- 이벤트 등 프로모션 알림 메일 수신 -->
						<ul>
							<li><span class="chk-form4 chkform"> <i
									class="far fa-check-circle check chk4"></i> <label
									for="chk1"> <span
										style="font-size: 18px; display: inline-block;">이벤트 등
											프로모션 알림 메일 수신<span class="sel">(선택)</span>
									</span>
								</label>
							</span></li>
						</ul>
					</div>
				</div>
				<div class="form-bx">
					<input type="submit" class="form cancel" value="취소" onclick="location.href='/bnb/main.do';" /> 
					<input type="submit" class="form ok" value="확인" disabled onclick="location.href='/bnb/user/registin.do';"/>
				</div>
			</div>
		</div>


<jsp:include page="/inc/asset3.jsp"></jsp:include>


	<script>
		
		var i = 0;
		var c1 = 0;
 		var c2 = 0;
 		var c3 = 0;
 		var c4 = 0;
	
		
		$(".chk-all-form").mouseup(function() {
		
	
			if (i == 0 || (c1 == 0 && c2 ==0 && c3==0 && c4 ==0)) {
				
				$(".check").css("color", "#56C3B8");
				$(".check").css("font-weight", "bold");
	
				c1 = 1;
				c2 = 1;
				c3 = 1;
				c4 = 1;
				i = 1;
				m1();				
				
			} else if (i == 1) {
				
				$(".check").css("color", "grey");
				$(".check").css("font-weight", "");
				
				c1 = 0;
				c2 = 0;
				c3 = 0;
				c4 = 0;
				
				i = 0;
				m1();
				
			} 
			
			 changeButton(); 

		});
		
		
		function m1() {
			if(c1 == 1 && c2 ==1 && c3==1 && c4 ==1) {
				$(".chk-all").css("color", "#56C3B8");
				$(".chk-all").css("font-weight", "bold");
			} else{
				$(".chk-all").css("color", "grey");
				$(".chk-all").css("font-weight", "");
			}
		}
		
		
		$(".chk-form1").mouseup(function() {
			
			if (c1 == 1) {
				
				$(".chk1").css("color", "grey");
				$(".chk1").css("font-weight", "");
				
				c1 = 0;
				m1();
				
			} else if (c1 == 0) {
				$(".chk1").css("color", "#56C3B8");
				$(".chk1").css("font-weight", "bold");
				
				c1 = 1;
				m1();				
				
			} 
			 changeButton(); 

		});
		
		
		$(".chk-form2").mouseup(function() {

			if (c2 == 1) {
				$(".chk2").css("color", "grey");
				$(".chk2").css("font-weight", "");
				c2 = 0;
				m1();				
			} else if (c2 == 0) {
				$(".chk2").css("color", "#56C3B8");
				$(".chk2").css("font-weight", "bold");
				
				c2 = 1;
				m1();	
			}
			 changeButton(); 

		});
		
		
		function changeButton() {

			if (c1 == 1 && c2 == 1) {
				$(".ok").attr("disabled", false);

			} else {
				$(".ok").attr("disabled", true);
			}
		}
		

		$(".chk-form3").mouseup(function() {

			if (c3 == 1) {
				$(".chk3").css("color", "grey");
				$(".chk3").css("font-weight", "");

				c3 = 0;
				m1();
			} else if (c3 == 0) {
				$(".chk3").css("color", "#56C3B8");
				$(".chk3").css("font-weight", "bold");

				c3 = 1;
				/* i = 0; */
				m1();
			}

		});

		$(".chk-form4").mouseup(function() {

			if (c4 == 1) {
				$(".chk4").css("color", "grey");
				$(".chk4").css("font-weight", "");
				c4 = 0;
				m1();

			} else if (c4 == 0) {
				$(".chk4").css("color", "#56C3B8");
				$(".chk4").css("font-weight", "bold");

				c4 = 1;
				/* i = 0; */
				m1();
			}

		});
		
	</script>










</body>
</html>